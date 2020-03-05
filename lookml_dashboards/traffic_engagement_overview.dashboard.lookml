- dashboard: traffic_engagement_overview
  title: Traffic Engagement Overview
  layout: newspaper
  elements:
  - name: User Engagement metrics by acquisition source, keyword searched, first page
      visited, and more
    type: text
    title_text: User Engagement metrics by acquisition source, keyword searched, first
      page visited, and more
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Total Sessions (Traffic)
    title: Total Sessions (Traffic)
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 224
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Unique Visitors (Traffic)
    title: Unique Visitors (Traffic)
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.unique_visitors
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 98
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 6
    width: 6
    height: 2
  - name: Returning Visitors
    title: Returning Visitors
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.returning_visitors
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 182
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 18
    width: 6
    height: 2
  - name: First Time Visitors
    title: First Time Visitors
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.first_time_visitors
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 140
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Average Sessions per Visitor (Traffic)
    title: Average Sessions per Visitor (Traffic)
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.average_sessions_ver_visitor
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 266
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 4
    col: 0
    width: 9
    height: 2
  - name: Average Page Views per Session
    title: Average Page Views per Session
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.page_views_session
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 308
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 4
    col: 9
    width: 6
    height: 2
  - name: Average Session Length
    title: Average Session Length
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.timeonsite_average_per_session
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 350
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 4
    col: 15
    width: 9
    height: 2
  - title: User Conversion Funnel by Source
    name: User Conversion Funnel by Source
    model: google_analytics_block
    explore: ga_sessions
    type: looker_column
    fields:
    - trafficSource.source
    - ga_sessions.session_count
    - ga_sessions.unique_visitors
    - totals.transactions_count
    sorts:
    - ga_sessions.session_count desc
    limit: 3
    column_limit: 50
    query_timezone: America/New_York
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
    show_dropoff: true
    series_colors:
      totals.hits_total: "#3B4260"
      totals.pageviews_total: "#1D98D3"
      totals.transactions_count: "#39A736"
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 389
      ga_sessions.session_count: "#3B4260"
      ga_sessions.unique_visitors: "#1D98D3"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 6
    col: 0
    width: 12
    height: 8
  - title: User Conversion Funnel by Keyword
    name: User Conversion Funnel by Keyword
    model: google_analytics_block
    explore: ga_sessions
    type: looker_column
    fields:
    - trafficSource.keyword
    - ga_sessions.session_count
    - ga_sessions.unique_visitors
    - totals.transactions_count
    sorts:
    - ga_sessions.session_count desc
    limit: 3
    column_limit: 50
    query_timezone: America/New_York
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
    show_dropoff: true
    series_colors:
      totals.hits_total: "#3B4260"
      totals.pageviews_total: "#1D98D3"
      totals.transactions_count: "#39A736"
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 389
      ga_sessions.session_count: "#3B4260"
      ga_sessions.unique_visitors: "#1D98D3"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 6
    col: 12
    width: 12
    height: 8
  - name: Engagement by Keyword Search
    title: Engagement by Keyword Search
    model: google_analytics_block
    explore: ga_sessions
    type: looker_bar
    fields:
    - trafficSource.keyword
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    filters:
      trafficSource.keyword: "-NULL,-(not provided)"
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: average_time_spent_per_page
      label: Average Time Spent per Page
      expression: "${totals.timeonsite_average_per_session}/${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_pageviews_per_session
      label: Average Pageviews per Session
      expression: "${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_time_per_session
      label: Average Time per Session
      expression: "${totals.timeonsite_average_per_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_sessions
      label: Total Sessions
      expression: "${ga_sessions.session_count}"
      value_format:
      value_format_name:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types:
      average_time_spent_per_page: line
      average_pageviews_per_session: line
      average_time_per_session: line
    hidden_series:
    - average_time_spent_per_page
    - average_pageviews_per_session
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_sessions
        name: Total Sessions
        __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 628
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 626
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: average_time_per_session
        name: Average Time per Session
        __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 632
      - id: average_time_spent_per_page
        name: Average Time Spent per Page
      - id: average_pageviews_per_session
        name: Average Pageviews per Session
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 629
    series_colors:
      ga_sessions.session_count: "#3B4260"
      totals.page_views_session: "#39A736"
      totals.timeonsite_average_per_session: "#B1B0B0"
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 639
      total_sessions: "#3B4260"
      average_pageviews_per_session: "#39A736"
      average_time_per_session: "#F3BF0E"
    hidden_fields:
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#F3BF0E"
    - "#ffffff"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 0
    width: 12
    height: 12
  - name: Keyword Full Detail
    title: Keyword Full Detail
    model: google_analytics_block
    explore: ga_sessions
    type: table
    fields:
    - trafficSource.keyword
    - ga_sessions.session_count
    - totals.visits_total
    - ga_sessions.returning_visitors
    - ga_sessions.unique_visitors
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      trafficSource.keyword: "-NULL,-(not provided)"
    sorts:
    - ga_sessions.session_count desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 814
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 12
    width: 12
    height: 12
  - name: Traffic Source Full Detail
    title: Traffic Source Full Detail
    model: google_analytics_block
    explore: ga_sessions
    type: table
    fields:
    - trafficSource.source
    - ga_sessions.session_count
    - totals.visits_total
    - ga_sessions.returning_visitors
    - ga_sessions.unique_visitors
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - totals.transactions_count
    - totals.transactionRevenue_total
    sorts:
    - ga_sessions.session_count desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 762
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 0
    width: 12
    height: 12
  - title: Top Performing First Pages Visited
    name: Top Performing First Pages Visited
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - first_page.pageTitle
    - totals.pageviews_total
    - totals.page_views_session
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: average_time_spent_per_page
      label: Average Time Spent per Page
      expression: "${totals.timeonsite_average_per_session}/${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_pageviews_per_session
      label: Average Pageviews per Session
      expression: "${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_time_per_session
      label: Average Time per Session
      expression: "${totals.timeonsite_average_per_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_sessions
      label: Total Sessions
      expression: "${ga_sessions.session_count}"
      value_format:
      value_format_name: decimal_0
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
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    - totals.page_views_session
    - totals.pageviews_total
    series_types:
      total_sessions: column
    series_colors:
      total_sessions: "#3B4260"
      average_pageviews_per_session: "#39A736"
      average_time_per_session: "#F3BF0E"
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#F3BF0E"
    - "#fff"
    y_axes:
    - label: Time in Seconds
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
      - id: average_time_spent_per_page
        name: Average Time Spent per Page
        axisId: average_time_spent_per_page
      - id: average_pageviews_per_session
        name: Average Pageviews per Session
        axisId: average_pageviews_per_session
      - id: average_time_per_session
        name: Average Time per Session
        axisId: average_time_per_session
    - label:
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
      - id: total_sessions
        name: Total Sessions
        axisId: total_sessions
    hidden_series:
    - average_time_spent_per_page
    - average_pageviews_per_session
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 38
    col: 0
    width: 24
    height: 8
  - title: Top 15 Pages - First Page Visited
    name: Top 15 Pages - First Page Visited
    model: google_analytics_block
    explore: ga_sessions
    type: table
    fields:
    - totals.pageviews_total
    - ga_sessions.session_count
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.bounces_total
    - totals.bounce_rate
    - totals.transactions_count
    - totals.transactionRevenue_total
    - first_page.pageTitle
    sorts:
    - ga_sessions.session_count desc
    limit: 15
    column_limit: 50
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
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 46
    col: 0
    width: 24
    height: 8
  - name: Engagement by Traffic Source
    title: Engagement by Traffic Source
    model: google_analytics_block
    explore: ga_sessions
    type: looker_bar
    fields:
    - trafficSource.source
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: average_time_spent_per_page
      label: Average Time Spent per Page
      expression: "${totals.timeonsite_average_per_session}/${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_pageviews_per_session
      label: Average Pageviews per Session
      expression: "${totals.page_views_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_time_per_session
      label: Average Time per Session
      expression: "${totals.timeonsite_average_per_session}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_sessions
      label: Total Sessions
      expression: "${ga_sessions.session_count}"
      value_format:
      value_format_name:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types:
      average_time_per_session: line
      average_pageviews_per_session: line
      average_time_spent_per_page: line
    hidden_series:
    - average_time_spent_per_page
    - average_pageviews_per_session
    y_axes:
    - label: Time in Seconds
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: average_pageviews_per_session
        name: Average Pageviews per Session
        __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 488
        axisId: average_pageviews_per_session
      - id: average_time_per_session
        name: Average Time per Session
        axisId: average_time_per_session
      - id: average_time_spent_per_page
        name: Average Time Spent per Page
        axisId: average_time_spent_per_page
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 486
    - label:
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_sessions
        name: Total Sessions
        __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 492
        axisId: total_sessions
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 489
    series_colors:
      ga_sessions.session_count: "#3B4260"
      totals.page_views_session: "#39A736"
      totals.timeonsite_average_per_session: "#B1B0B0"
      __FILE: bq_connectors_ga360/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 499
      total_sessions: "#3B4260"
      average_time_per_session: "#F3BF0E"
      average_pageviews_per_session: "#39A736"
    hidden_fields:
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#F3BF0E"
    - "#ffffff"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 12
    width: 12
    height: 12
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
  - name: Property (Website)
    title: Property (Website)
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
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