- dashboard: bounce_rates
  title: Bounce Rates
  layout: newspaper
  elements:
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
    row: 0
    col: 0
    width: 5
    height: 3
  - name: Unique Visitors
    title: Unique Visitors
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
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 96
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 0
    col: 5
    width: 5
    height: 3
  - name: Average Sessions per Visitor
    title: Average Sessions per Visitor
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
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 52
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 0
    col: 10
    width: 5
    height: 3
  - name: Total Bounces
    title: Total Bounces
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.bounces_total
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
      __LINE_NUM: 181
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 0
    col: 15
    width: 5
    height: 3
  - name: Average Bounce Rate
    title: Average Bounce Rate
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.bounce_rate
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
      __LINE_NUM: 225
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 0
    col: 20
    width: 4
    height: 3
  - name: New vs Returning Bounce Totals
    title: New vs Returning Bounce Totals
    model: google_analytics_block
    explore: ga_sessions
    type: looker_pie
    fields:
    - ga_sessions.first_time_visitor
    - totals.bounces_total
    fill_fields:
    - ga_sessions.first_time_visitor
    sorts:
    - ga_sessions.first_time_visitor
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types:
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 532
    y_axis_unpin: true
    series_labels:
      No - Session Bounce Rate: Return Visitor Bounce Rate
      Yes - Session Bounce Rate: First Time Visitor Bounce Rate
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 535
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 11
    col: 0
    width: 11
    height: 8
  - name: Bounces by Visitor Frequency
    title: Bounces by Visitor Frequency
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitnumbertier
    - totals.bounce_rate
    - ga_sessions.session_count
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
    sorts:
    - ga_sessions.visitnumbertier
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 7
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    series_labels:
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 395
    label_color:
    - "#1D98D3"
    - "#fff"
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
      - id: ga_sessions.session_count
        name: Session Session Count
        axisId: ga_sessions.session_count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Session Bounce Rate
        axisId: totals.bounce_rate
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 3
    col: 13
    width: 11
    height: 8
  - title: Bounces by Keyword Acquisition
    name: Bounces by Keyword Acquisition
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.bounce_rate
    - ga_sessions.session_count
    - trafficSource.keyword
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color:
    - "#1D98D3"
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
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 19
    col: 0
    width: 13
    height: 7
  - name: New vs Returning User Bounce Rates
    title: New vs Returning User Bounce Rates
    model: google_analytics_block
    explore: ga_sessions
    type: looker_column
    fields:
    - totals.bounce_rate
    - ga_sessions.first_time_visitor
    fill_fields:
    - ga_sessions.first_time_visitor
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
    sorts:
    - totals.bounce_rate desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 11
    col: 11
    width: 13
    height: 8
  - name: Bounces by Browser
    title: Bounces by Browser
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - device.browser
    - totals.bounce_rate
    - ga_sessions.session_count
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color:
    - "#1D98D3"
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
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 3
    col: 0
    width: 13
    height: 8
  - name: Bounces and Rate by Page Path
    title: Bounces and Rate by Page Path
    model: google_analytics_block
    explore: ga_sessions
    type: looker_bar
    fields:
    - first_page.pagePath
    - totals.bounce_rate
    - ga_sessions.session_count
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounce_rate: line
    label_color:
    - "#1D98D3"
    - "#fff"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: '4'
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 0
    width: 11
    height: 14
  - title: Bounces by Source Acquisition
    name: Bounces by Source Acquisition
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.bounce_rate
    - ga_sessions.session_count
    - trafficSource.source
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color:
    - "#1D98D3"
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
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 19
    col: 13
    width: 11
    height: 7
  - name: Top Performing Articles (Full Detail)
    title: Top Performing Articles (Full Detail)
    model: google_analytics_block
    explore: ga_sessions
    type: table
    fields:
    - hits_page.pageTitle
    - ga_sessions.session_count
    - totals.bounces_total
    - totals.bounce_rate
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      hits_page.pageTitle: "-NULL"
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
      __FILE: bq_connectors_ga360/bounce_rates.dashboard.lookml
      __LINE_NUM: 581
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 11
    width: 13
    height: 14
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
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