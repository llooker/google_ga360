### What does this Looker Block do for me?
**(1) Combine Multiple Data Sources** - Combine your GA data with data from AdWords, DoubleClick, Facebook Ads, Salesforce, and more to get a holistic view of all your customer data in one central view (see bottom of this page for instructions).

**(2) Replicate Existing GA Reports + More** - Replicate all your existing GA reports and dashboards in a matter of minutes or hours to make the switch to Looker seamless. Plus, enjoy all the additional value-add analysis that comes turnkey with this plug-and-play model and dashboards. Time-to-value for a new data tool has never been quicker.

**(3) Compare Multiple Dimensions and Metrics** - rather than being limited to viewing 1 dimension, and 2-4 metrics at a time, Looker allows you to compare any number of dimensions and metrics, including retroactive goals and custom user segments, on the same visualization or dashboard.

**(4) Enterprise Data Platform** - Take advantage of Looker's data platform functionality, including [data actions](https://discourse.looker.com/t/data-actions/3573), scheduling, permissions, alerting, parameterization (each user can only see their own data), and more

**(5) Multiple GA Properties in One Dashboard** - Elevate your analysis beyond the limited "Roll-Up Reporting" and see all properties in one dashboard and explore interface! The parameterize user permissions as necessary (so analyst for website A can't see data for website B) to give each user a live view into the data that matters to them

**(6) Usable / Shareable Dashboards** - create centralized dashboards for the entire team, and departmental or individual dashboards for each user, and rest easy knowing everyone is looking at the same information at all times. Then schedule the dashboard for emails or alerts, period-end reporting, anomaly detection, or whatever else serves your use-case.


### Google Analytics Premium Data Structure

* Google Analytics Premium (GA360) data is exported (in this case, through [Transfer Services](https://cloud.google.com/bigquery/transfer/)) in the format of a single flat table with a new entry for each session. Rather than creating new tables for each entity attribute, Google places aggregate or attribute information in nested fields in the single table. For more information on Nested Fields, and why Google chooses to use them, please refer to this overview on [Why Nesting is so Cool](https://discourse.looker.com/t/why-nesting-is-so-cool/4182).

* There are two types of nested fields: repeated fields and non-repeated fields. In Standard SQL, both are stored as ``ARRAY``s, which can contain both [simple and complex data types](https://cloud.google.com/bigquery/docs/reference/standard-sql/arrays). Non-repeated fields can be unnested and joined using a ``one_to_one`` relationship. Repeated fields are unnested, and joined on through a ``one_to_many`` join (see lines 30-34 of the ``ga_block`` view for an example). Please take note that brackets are used for non-repeated fields, and not used for repeated fields, in the join syntax. This is a critical element to working with nested fields in BigQuery.

* Google's documentation on the data included in the export can be [found here](https://support.google.com/analytics/answer/3437719?hl=en).

* You can also find a cookbook of SQL queries for common questions in [Google's documentation](https://support.google.com/analytics/answer/4419694?hl=en&ref_topic=3416089#query6_SequenceOfHits)


### Block Structure

* ``ga_block`` contains all join logic and all individual view files, dimensions, and measures. You'll notice each view file has an ``extension: required`` parameter, which is also why each table has a ``_base`` suffix. This means each file must be appended to another table to show up on the Explore page. These other tables are located in the ``ga_customize`` view. Documentation on extends can be [found here](https://looker.com/docs/data-modeling/learning-lookml/extends?version=4.10&lookml=new).

* ``ga_customze``: contains all the extended view files. If your organization uses any custom fields with Google Analytics, this is where you can insert those fields. In-line directions are provided in the code. *_It's important to note that, if you want to Explore a table, there must be an extends parameter under the corresponding table in this view file_*. For example, if I wanted to explore ``trafficsource``, I would add an ``extends: [trafficsource_base]`` parameter under ``view: trafficsource``.

### Customizations

* **Connection**: in the `google_analytics_block` model file, change the connection name at the top to the name of your BQ connection.

* **View**: the line for ``sql_table_name`` in the  ``ga_customize`` view must be changed to match the user's schema and table name, in the format of ``<data_set>.ga_session_*``.

* **(Optional) Multiple Properties / Websites**: If you have more than one website (property), you can choose to view all websites at the same time, or dynamically select the website for each query. You can also parameterize queries so that certain users can only see data for the websites they have permission to view. The field for website is called ``ga_sessions.hits.hits_sourcePropertyInfo``, which can be found at the bottom of the ``ga_block`` file.

* **(Optional) Visit Start Time**: Substitute `sql: (TIMESTAMP(${partition_date}))` with `sql: (TIMESTAMP(${visitStartSeconds}))`. We've referenced `partition_date` in this model for demo purposes due to a limited fake dataset.

### Bringing in Custom User Segments and Goals

* **Customer User Segments**: Google Analytics provides great, out-of-the-box capabilities to create user segments based on up to 5 dimensions (e.g. demographic info, referral path, etc.). While these custom user segments are not exported to the GAP data set natively, it's easier, and more flexible, to recreate these segments in Looker. Simply create a dimension using a `Case When` statement, including all of the dimensions you'd like to filter on. Alternatively, you can create a filtered measure instead. Plus, you can include as many filters as you'd like to really hone in on specific user cohorts. Your assigned looker analyst or support chat can help you build in this logic if you get confused.

* **Goals**: Goal configured in Google Analytics Console are not natively exported into the BigQuery datasets. Similar to custom segments, we can recreate this logic in LookML, which allows for even greater flexibility, sophisticated analysis, and seamless shareability across all users. Examples of more sophisticated goals include:
  * **Partial form completion** – User fills out fills out the first page of a form but does not complete it
  * **Condition on earlier steps** – User completes a conversion immediately after interacting with a promotion
  * **Condition on custom dimension** – Goal was completed by a certain type of user


### Connecting to Other Data Sources

The image below depicts the possible links between various Google and external data sources. Documentation on how to link each of these sources can also be found below. If you want to get started with Transfer Service, the latest Transfer Service request for can be found [here](https://docs.google.com/forms/d/e/1FAIpQLSeNaY1aO-vn9WEmd5BW8hGPjIXQrjqse7vikUlh6KMf2OAQ4w/viewform).

![image](https://cloud.githubusercontent.com/assets/9888083/25569596/2fcb070e-2dcf-11e7-80d8-873d2de373aa.png)


* **Doubleclick Campaign (Bid) Manager**: Linking to GA360 - Follow the [documentation here](https://support.google.com/analytics/answer/6318719?hl=en). Note: Requires admin permissions for both GA360 and DCM. Linking to YouTube - You can also enable tracking Ads and impression pixels to track impressions downstream (into YouTube for example) by following the documentation [here](https://support.google.com/dcm/answer/3040965) and [here](https://support.google.com/dcm/answer/2826133?hl=en&ref_topic=2826011).

* **DoubleClick for Publishers**: Linking to GA360 - This integration includes both AdSense and Ad Exchange and requires work on the side of the Google Admin, as well as the creation of a tagging system using either self-built or Google service-provided tag managers. After tagging is enabled, the following steps can be found in [Google’s Documentation](https://support.google.com/analytics/answer/6371469?hl=en). Once you’ve done this, be sure to include the AdWords data by adding the extends: [hits_publisher_base] beneath view: hits_publisher (on line 90 in ga_customize out-of-the-box)

* **Adwords**: Linking to GA360 - Connecting AdWords is fairly straightforward. Follow the instructions provided in [Google’s documentation](https://support.google.com/adwords/answer/6209127?hl=en). Linking to YouTube: You can also link your AdWords account to YouTube as described [here](https://support.google.com/youtube/answer/3063482?hl=en&ref_topic=2973023).

* **YouTube**: Linking to GA360 - Youtube content integration cannot be tied natively with data exports. To workaround this, users can add YouTube pages to their Google Analytics console (via the GA GUI), then narrow down analysis to specific youtube channels via filters in Looker. Linking to AdWords: You can also link your AdWords account to YouTube as described [here](https://support.google.com/youtube/answer/3063482?hl=en&ref_topic=2973023).

* **CRMs (such as Salesforce) or Other Sources** Google does not capture any PII, which means that ``user_id`` and/or ``client_id`` is unique to only Google Analytics Premium. This key is not shared, by default, across any of your CRM data, or any other data sources you're pulling from. To join this data, a common key must be created. There are several methods to accomplishing this, one of which Google has provided some [documentation](https://support.google.com/analytics/answer/7584446?hl=en) around. You can find a blog post, which provides an example joining firebase data to GA360 data, on [Google's Cloud Blog](https://cloud.google.com/blog/big-data/2017/04/how-to-do-cross-platform-analytics-with-google-bigquery).


### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendations, simply create a "New Issue" in the corresponding [Github repo for this Block](https://github.com/llooker/google_ga360/issues). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.


### Notes and Other Known Issues

* **Data Discrepency in User Count Between GA UI and GA in BQ** - The user count between the GA UI and the data exported to BQ will always have an expected 1-2% discrepency. This is because, the Google Analytics UI estimates the total number of users using a specific user counting algorithm for all reports except unsampled reports, whereas a proper BigQuery user count query which counts distinct fullVisitorIds will literally count all unique fullVisitorIds. Hence there can be up to a 2% discrepancy between the Google Analytics UI and BigQuery export. However, if the discrepancy is more than that, then you should contact your GA360 support Agency.
* **Data Discrepency in Session Count Between GA UI and GA in BQ** - In the GA UI, sessions are only counted if they contain an interaction hit. If the hit is set to non-interaction=true, then it wouldn’t initiate a session to be captured for GA. However, in BigQuery we get all the hit level data. Therefore, we can get all those hits where non-interaction=true. Now, in order to compare the total sessions between GA and BigQuery, we need to check all the sessions with interaction hits. That’s the reason, we’ve included this condition.
