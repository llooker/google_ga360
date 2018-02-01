- dashboard: transactions_conversions_and_revenue
  title: Transactions, Conversions, and Revenue
  layout: newspaper
  elements:
  - name: Top Acquisition Sources by Revenue
    title: Top Acquisition Sources by Revenue
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.source
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      total_transaction_revenue: column
    inner_radius: 50
    hidden_fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_colors:
      transaction_conversion_rate: "#1D98D3"
      total_transaction_revenue: "#3B4260"
      avg_revenue_per_transaction: "#39A736"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#"
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#fff"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 5
    col: 12
    width: 12
    height: 9
  - name: First Page Visited (Full Detail)
    title: First Page Visited (Full Detail)
    model: google_analytics_block
    explore: ga_sessions
    type: table
    fields:
    - first_page.pageTitle
    - ga_sessions.session_count
    - totals.page_views_session
    - totals.pageviews_total
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    sorts:
    - totals.transactionRevenue_total desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: '12'
    series_types:
      __FILE: bq_connectors_ga360/ga_sessions_and_visitors.dashboard.lookml
      __LINE_NUM: 394
    hidden_fields:
    - totals.transactionRevenue_total
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 30
    col: 0
    width: 24
    height: 6
  - name: Revenue and Conversion Rate by Session Length
    title: Revenue and Conversion Rate by Session Length
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.timeonsite_tier
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      totals.timeonsite_tier: "-Undefined"
    sorts:
    - totals.timeonsite_tier
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${ga_sessions.session_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      total_transaction_revenue: column
    series_colors:
      ga_sessions.session_count: "#3B4260"
      total_transaction_revenue: "#3B4260"
      avg_revenue_per_transaction: "#39A736"
    hidden_fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#fff"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 0
    width: 12
    height: 9
  - name: Total Sessions
    title: Total Sessions
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.session_count
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 138
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 0
    width: 4
    height: 3
  - name: Top Keywords by Revenue
    title: Top Keywords by Revenue
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.keyword
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
    sorts:
    - totals.transactionRevenue_total desc
    limit: 5
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_visitors_w_transactions
      label: Percent of Visitors w/ Transactions
      expression: "${totals.transactions_count}/${ga_sessions.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_transaction_revenue
      label: Average Transaction Revenue
      expression: "${total_transaction_revenue}/${totals.transactions_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types:
      totals.transactionRevenue_total: column
      total_transaction_revenue: column
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_colors:
      totals.transactionRevenue_total: "#3B4260"
      percent_of_visitors_w_transactions: "#1D98D3"
      total_transaction_revenue: "#3B4260"
      average_transaction_revenue: "#39A736"
    series_labels: {}
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#fff"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 5
    col: 0
    width: 12
    height: 9
  - title: Revenue Conversion Rate by Visit Tier
    name: Revenue Conversion Rate by Visit Tier
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitnumbertier
    - totals.transactions_count
    - totals.transactionRevenue_total
    - ga_sessions.session_count
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
    sorts:
    - ga_sessions.visitnumbertier
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      revenue: column
      total_transaction_revenue: column
    hidden_fields:
    - totals.transactions_count
    - totals.transactionRevenue_total
    - ga_sessions.session_count
    series_colors:
      sessions: "#3B4260"
      average_time_on_site_per_session: "#39A736"
      average_pageview_per_session: "#F3BF0E"
      total_transaction_revenue: "#3B4260"
      avg_revenue_per_transaction: "#39A736"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
    hidden_series:
    - average_time_on_site_per_session
    - average_pageview_per_session
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#ffff"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 12
    width: 12
    height: 9
  - title: Total Revenue
    name: Total Revenue
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.transactionRevenue_total
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 16
    width: 4
    height: 3
  - title: Total Transactions
    name: Total Transactions
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.transactions_count
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 8
    width: 4
    height: 3
  - title: Average Revenue per Transaction
    name: Average Revenue per Transaction
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.transactions_count
    - totals.transactionRevenue_total
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: revenue_per_transaction
      label: Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    - totals.transactions_count
    - totals.transactionRevenue_total
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 12
    width: 4
    height: 3
  - title: Transaction Conversion Rate
    name: Transaction Conversion Rate
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.transactions_count
    - ga_sessions.session_count
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: revenue_per_transaction
      label: Revenue per Transaction
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    - totals.transactions_count
    - ga_sessions.session_count
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 4
    width: 4
    height: 3
  - title: Unique Visitors
    name: Unique Visitors
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 20
    width: 4
    height: 3
  - name: How are Conversion Rates and Revenue figures affected by session length,
      frequency, and acquisition source?
    type: text
    title_text: How are Conversion Rates and Revenue figures affected by session length,
      frequency, and acquisition source?
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Revenue and Conversion Rate by First Page Visited
    name: Revenue and Conversion Rate by First Page Visited
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    - first_page.pageTitle
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_types:
      total_transaction_revenue: column
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#ffff"
    series_colors:
      total_transaction_revenue: "#3B4260"
      avg_revenue_per_transaction: "#39A736"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 23
    col: 0
    width: 24
    height: 7
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    model: google_analytics_block
    explore: ga_sessions
    field: trafficSource.campaign
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Date
    title: Date
    type: date_filter
    default_value: 14 days
    allow_multiple_values: true
    required: false
  - name: First Time Visitor
    title: First Time Visitor
    type: field_filter
    default_value: ''
    model: google_analytics_block
    explore: ga_sessions
    field: ga_sessions.first_time_visitor
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Property
    title: Property
    type: string_filter
    default_value: All Websites
    allow_multiple_values: true
    required: false