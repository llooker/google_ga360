view: ga_sessions_20130910 {
  sql_table_name: ga360.ga_sessions_20130910 ;;

  dimension: custom_dimensions__index {
    type: number
    sql: ${TABLE}.customDimensions.index ;;
    fanout_on: "customDimensions"
  }

  dimension: custom_dimensions__value {
    type: string
    sql: ${TABLE}.customDimensions.value ;;
    fanout_on: "customDimensions"
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
  }

  dimension: device__browser_version {
    type: string
    sql: ${TABLE}.device.browserVersion ;;
  }

  dimension: device__flash_version {
    type: string
    sql: ${TABLE}.device.flashVersion ;;
  }

  dimension: device__is_mobile {
    type: yesno
    sql: ${TABLE}.device.isMobile ;;
  }

  dimension: device__java_enabled {
    type: yesno
    sql: ${TABLE}.device.javaEnabled ;;
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device.language ;;
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operatingSystem ;;
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device.operatingSystemVersion ;;
  }

  dimension: device__screen_colors {
    type: string
    sql: ${TABLE}.device.screenColors ;;
  }

  dimension: device__screen_resolution {
    type: string
    sql: ${TABLE}.device.screenResolution ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  dimension: hits__app_info__id {
    type: string
    sql: ${TABLE}.hits.appInfo.id ;;
    fanout_on: "hits"
  }

  dimension: hits__app_info__installer_id {
    type: string
    sql: ${TABLE}.hits.appInfo.installerId ;;
    fanout_on: "hits"
  }

  dimension: hits__app_info__name {
    type: string
    sql: ${TABLE}.hits.appInfo.name ;;
    fanout_on: "hits"
  }

  dimension: hits__app_info__version {
    type: string
    sql: ${TABLE}.hits.appInfo.version ;;
    fanout_on: "hits"
  }

  dimension: hits__content_info__content_description {
    type: string
    sql: ${TABLE}.hits.contentInfo.contentDescription ;;
    fanout_on: "hits"
  }

  dimension: hits__custom_dimensions__index {
    type: number
    sql: ${TABLE}.hits.customDimensions.index ;;
    fanout_on: "hits.customDimensions"
  }

  dimension: hits__custom_dimensions__value {
    type: string
    sql: ${TABLE}.hits.customDimensions.value ;;
    fanout_on: "hits.customDimensions"
  }

  dimension: hits__custom_metrics__index {
    type: number
    sql: ${TABLE}.hits.customMetrics.index ;;
    fanout_on: "hits.customMetrics"
  }

  dimension: hits__custom_metrics__value {
    type: number
    sql: ${TABLE}.hits.customMetrics.value ;;
    fanout_on: "hits.customMetrics"
  }

  dimension: hits__custom_variables__custom_var_name {
    type: string
    sql: ${TABLE}.hits.customVariables.customVarName ;;
    fanout_on: "hits.customVariables"
  }

  dimension: hits__custom_variables__custom_var_value {
    type: string
    sql: ${TABLE}.hits.customVariables.customVarValue ;;
    fanout_on: "hits.customVariables"
  }

  dimension: hits__custom_variables__index {
    type: number
    sql: ${TABLE}.hits.customVariables.index ;;
    fanout_on: "hits.customVariables"
  }

  dimension: hits__event_info__event_action {
    type: string
    sql: ${TABLE}.hits.eventInfo.eventAction ;;
    fanout_on: "hits"
  }

  dimension: hits__event_info__event_category {
    type: string
    sql: ${TABLE}.hits.eventInfo.eventCategory ;;
    fanout_on: "hits"
  }

  dimension: hits__event_info__event_label {
    type: string
    sql: ${TABLE}.hits.eventInfo.eventLabel ;;
    fanout_on: "hits"
  }

  dimension: hits__event_info__event_value {
    type: number
    sql: ${TABLE}.hits.eventInfo.eventValue ;;
    fanout_on: "hits"
  }

  dimension: hits__exception_info__description {
    type: string
    sql: ${TABLE}.hits.exceptionInfo.description ;;
    fanout_on: "hits"
  }

  dimension: hits__exception_info__is_fatal {
    type: yesno
    sql: ${TABLE}.hits.exceptionInfo.isFatal ;;
    fanout_on: "hits"
  }

  dimension: hits__hit_number {
    type: number
    sql: ${TABLE}.hits.hitNumber ;;
    fanout_on: "hits"
  }

  dimension: hits__hour {
    type: number
    sql: ${TABLE}.hits.hour ;;
    fanout_on: "hits"
  }

  dimension: hits__is_interaction {
    type: yesno
    sql: ${TABLE}.hits.isInteraction ;;
    fanout_on: "hits"
  }

  dimension: hits__is_secure {
    type: yesno
    sql: ${TABLE}.hits.isSecure ;;
    fanout_on: "hits"
  }

  dimension: hits__item__currency_code {
    type: string
    sql: ${TABLE}.hits.item.currencyCode ;;
    fanout_on: "hits"
  }

  dimension: hits__item__item_quantity {
    type: number
    sql: ${TABLE}.hits.item.itemQuantity ;;
    fanout_on: "hits"
  }

  dimension: hits__item__item_revenue {
    type: number
    sql: ${TABLE}.hits.item.itemRevenue ;;
    fanout_on: "hits"
  }

  dimension: hits__item__local_item_revenue {
    type: number
    sql: ${TABLE}.hits.item.localItemRevenue ;;
    fanout_on: "hits"
  }

  dimension: hits__item__product_category {
    type: string
    sql: ${TABLE}.hits.item.productCategory ;;
    fanout_on: "hits"
  }

  dimension: hits__item__product_name {
    type: string
    sql: ${TABLE}.hits.item.productName ;;
    fanout_on: "hits"
  }

  dimension: hits__item__product_sku {
    type: string
    sql: ${TABLE}.hits.item.productSku ;;
    fanout_on: "hits"
  }

  dimension: hits__item__transaction_id {
    type: string
    sql: ${TABLE}.hits.item.transactionId ;;
    fanout_on: "hits"
  }

  dimension: hits__minute {
    type: number
    sql: ${TABLE}.hits.minute ;;
    fanout_on: "hits"
  }

  dimension: hits__page__hostname {
    type: string
    sql: ${TABLE}.hits.page.hostname ;;
    fanout_on: "hits"
  }

  dimension: hits__page__page_path {
    type: string
    sql: ${TABLE}.hits.page.pagePath ;;
    fanout_on: "hits"
  }

  dimension: hits__page__page_title {
    type: string
    sql: ${TABLE}.hits.page.pageTitle ;;
    fanout_on: "hits"
  }

  dimension: hits__page__search_category {
    type: string
    sql: ${TABLE}.hits.page.searchCategory ;;
    fanout_on: "hits"
  }

  dimension: hits__page__search_keyword {
    type: string
    sql: ${TABLE}.hits.page.searchKeyword ;;
    fanout_on: "hits"
  }

  dimension: hits__referer {
    type: string
    sql: ${TABLE}.hits.referer ;;
    fanout_on: "hits"
  }

  dimension: hits__time {
    type: number
    sql: ${TABLE}.hits.time ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__affiliation {
    type: string
    sql: ${TABLE}.hits.transaction.affiliation ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__currency_code {
    type: string
    sql: ${TABLE}.hits.transaction.currencyCode ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__local_transaction_revenue {
    type: number
    sql: ${TABLE}.hits.transaction.localTransactionRevenue ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__local_transaction_shipping {
    type: number
    sql: ${TABLE}.hits.transaction.localTransactionShipping ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__local_transaction_tax {
    type: number
    sql: ${TABLE}.hits.transaction.localTransactionTax ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__transaction_id {
    type: string
    sql: ${TABLE}.hits.transaction.transactionId ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__transaction_revenue {
    type: number
    sql: ${TABLE}.hits.transaction.transactionRevenue ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__transaction_shipping {
    type: number
    sql: ${TABLE}.hits.transaction.transactionShipping ;;
    fanout_on: "hits"
  }

  dimension: hits__transaction__transaction_tax {
    type: number
    sql: ${TABLE}.hits.transaction.transactionTax ;;
    fanout_on: "hits"
  }

  dimension: hits__type {
    type: string
    sql: ${TABLE}.hits.type ;;
    fanout_on: "hits"
  }

  dimension: totals__bounces {
    type: number
    sql: ${TABLE}.totals.bounces ;;
  }

  dimension: totals__hits {
    type: number
    sql: ${TABLE}.totals.hits ;;
  }

  dimension: totals__new_visits {
    type: number
    sql: ${TABLE}.totals.newVisits ;;
  }

  dimension: totals__pageviews {
    type: number
    sql: ${TABLE}.totals.pageviews ;;
  }

  dimension: totals__time_on_site {
    type: number
    sql: ${TABLE}.totals.timeOnSite ;;
  }

  dimension: totals__transaction_revenue {
    type: number
    sql: ${TABLE}.totals.transactionRevenue ;;
  }

  dimension: totals__transactions {
    type: number
    sql: ${TABLE}.totals.transactions ;;
  }

  dimension: totals__visits {
    type: number
    sql: ${TABLE}.totals.visits ;;
  }

  dimension: traffic_source__ad_content {
    type: string
    sql: ${TABLE}.trafficSource.adContent ;;
  }

  dimension: traffic_source__campaign {
    type: string
    sql: ${TABLE}.trafficSource.campaign ;;
  }

  dimension: traffic_source__keyword {
    type: string
    sql: ${TABLE}.trafficSource.keyword ;;
  }

  dimension: traffic_source__medium {
    type: string
    sql: ${TABLE}.trafficSource.medium ;;
  }

  dimension: traffic_source__referral_path {
    type: string
    sql: ${TABLE}.trafficSource.referralPath ;;
  }

  dimension: traffic_source__source {
    type: string
    sql: ${TABLE}.trafficSource.source ;;
  }

  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_number {
    type: number
    sql: ${TABLE}.visitNumber ;;
  }

  dimension: visit_start_time {
    type: number
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitorId ;;
  }

  measure: count {
    type: count
    drill_fields: [hits__item__product_name, hits__app_info__name, hits__custom_variables__custom_var_name, hits__page__hostname]
  }
}
