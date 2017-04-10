# Readme

### Notes

* Google Analytics Premium (GA360) data is exported in the format of a single flat table with a new entry for each session. Rather than creating new tables for each entity attribute, Google places aggregate or attribute information in nested fields in the single tabel. For more information on Nested Fields, and why Google chooses to use them, please refer to this overview on [Why Nesting is so Cool](https://discourse.looker.com/t/why-nesting-is-so-cool/4182).

* There are two types of nested fields: repeated fields and non-repeated fields. In Standard SQL, both are stored as ``ARRAY``'s, which can contain both [simple and complex data types](https://cloud.google.com/bigquery/docs/reference/standard-sql/arrays). Non-repeated fields can be unnested, and joined using a ``one_to_one`` relationship. Repeated fields are unnested, and joined on through a ``one_to_many`` join (see lines 30-34 of the ``ga_block`` view for an example). Please take note that brackets are used for non-repeated fields, and not used for repeated fields, in the join syntax. This is a critical element to working with nested fields in BigQuery.

### Necessary Customizations

* **View:**``ga_customize`` line 19 parameter for ``sql_table_name`` must be customized to the users ``data_set.ga_session_*``

* **Dashboards:** Replace ``model: ga_connectors360`` with the appropriate model name, using the Find and Replace bar in the top right of your screen
