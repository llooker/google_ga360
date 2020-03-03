connection: "bigquery_publicdata"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

datagroup: persist {
  sql_trigger: SELECT 1 ;;
}

explore: ga_sessions {
  label: "GA Sessions"
  extends: [ga_sessions_block]
}
