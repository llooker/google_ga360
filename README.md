### What does this Block do for me?

* Accelerated Time to Value
* Expertise of Google + Looker data teams
* Accessibility
* Best Practice Design Patterns
* Leveraging Most of BQ Investment


### Google Analytics Premium Data Structure

* Google Analytics Premium (GA360) data is exported (in this case, through [Transfer Services](https://cloud.google.com/bigquery/transfer/)) in the format of a single flat table with a new entry for each session. Rather than creating new tables for each entity attribute, Google places aggregate or attribute information in nested fields in the single tabel. For more information on Nested Fields, and why Google chooses to use them, please refer to this overview on [Why Nesting is so Cool](https://discourse.looker.com/t/why-nesting-is-so-cool/4182).

* There are two types of nested fields: repeated fields and non-repeated fields. In Standard SQL, both are stored as ``ARRAY``'s, which can contain both [simple and complex data types](https://cloud.google.com/bigquery/docs/reference/standard-sql/arrays). Non-repeated fields can be unnested, and joined using a ``one_to_one`` relationship. Repeated fields are unnested, and joined on through a ``one_to_many`` join (see lines 30-34 of the ``ga_block`` view for an example). Please take note that brackets are used for non-repeated fields, and not used for repeated fields, in the join syntax. This is a critical element to working with nested fields in BigQuery.

* Google's documentation on the data included in the export can be [found here](https://support.google.com/analytics/answer/3437719?hl=en).


### Block Structure

* ``ga_block`` contains all join logic and all individual view files, dimensions, and measures. You'll notice each view file has an ``extension: required`` parameter, which is also why each table has a ``_base`` suffix. This means each file must be appended to another table to show up on the Explore page. These other tables are located in the ``ga_customize`` view. Documentation on extends can be [found here](https://looker.com/docs/data-modeling/learning-lookml/extends?version=4.10&lookml=new).

* ``ga_customze``: contains all the extended view files. If your organization uses any custom fields with Google Analytics, this is where you can insert those fields. In-line directions are provided in the code. *_It's important to note that, if you want to Explore a table, there must be an extends parameter under the correspdoning table in this view file_*. For example, if I wanted to explore ``trafficsource``, I would add an ``extends: [trafficsource_base]`` parameter under ``view: trafficsource``.

### Necessary Customizations

* **View**:``ga_customize`` line 19 parameter for ``sql_table_name`` must be customized to the users ``data_set.ga_session_*``.

* **Dashboards**: Replace ``model: ga_connectors360`` with your chosen name.

* **Available Explores**: Recall from above, that each ``extends`` field but must declared to allow users to Explore on a view.


### Connecting to Other Data Sources

The image below depicts the possible linkes between various Google and external data sources. Documentation on how to link each of these sources can also be found below.

![image](https://cloud.githubusercontent.com/assets/9888083/25569596/2fcb070e-2dcf-11e7-80d8-873d2de373aa.png)

* **Doubleclick Campaign (Bid) Manager**: Requires admin permissions for the Google users. [Follow the documentation here](https://support.google.com/analytics/answer/6318719?hl=en).


* **DoubleClick for Publishers**: This integration includes both [AdSense](https://www.google.com/adsense/start/#/?modal_active=none) and [Ad Exchange](https://www.doubleclickbygoogle.com/solutions/digital-marketing/ad-exchange/), and requires work on the side of the Google Admin, as well as the creation of a tagging system using either self-built or Google service-provided tag managers. After tagging is enabled, the following steps can be found in [Google's Documentation](https://support.google.com/analytics/answer/6371469?hl=en). Once you've done this, be sure to include the AdWord data by adding the ``extends: [hits_publisher_base]`` beneath ``view: hits_publisher`` (on line 90 in ``ga_customize`` out-of-the-box)

* **Adwords**: Connecting AdWords is fairly straightforward. Follow the instructions provided in [Google's documentation](https://support.google.com/adwords/answer/6209127?hl=en). Once you've done this, be sure to include the AdWord data by adding the ``extends: [adwordsClickInfo_base]`` beneath ``view: adwordsClickInfo`` (on line 86 in ``ga_customize`` out-of-the-box)

* **YouTube**: Youtube integration can be configured via the GUI in the GA360 console, though only data around the Youtube content can be linked, not user-level or client-speficic data.

* **CRMs or Other Sources** Google does not capture any PII, which means that ``user_id`` and/or ``client_id`` is unique to only Google Analytics Premium. This key is not shared, by default, across any of your CRM data, or any other data sources you're pulling from. To join this data, a common key must be created. There are several methods to accomplishing this, one of which Google has provided some [documentation](https://github.com/GoogleCloudPlatform/google-analytics-premium-bigquery-statistics) around.
