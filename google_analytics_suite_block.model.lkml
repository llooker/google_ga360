connection: "bigquery_publicdata"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: ga_sessions {
  extends: [ga_sessions_block]
}
