- dashboard: google_analytics_overview
  title: Google Analytics Overview
  layout: newspaper
  elements:
  - title: Users
    name: Users
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - ga_sessions.visitStart_week
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.unique_visitors},1)-${ga_sessions.unique_visitors}))/(offset(${ga_sessions.unique_visitors},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 0
    width: 3
    height: 4
  - title: Returning Users
    name: Returning Users
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - ga_sessions.returning_visitors
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.returning_visitors},1)-${ga_sessions.returning_visitors}))/(offset(${ga_sessions.returning_visitors},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 3
    width: 3
    height: 4
  - title: Sessions
    name: Sessions
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - ga_sessions.session_count
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.session_count},1)-${ga_sessions.session_count}))/(offset(${ga_sessions.session_count},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 6
    width: 3
    height: 4
  - title: Average Session Duration
    name: Average Session Duration
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.timeonsite_average_per_session
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.timeonsite_average_per_session},1)-${totals.timeonsite_average_per_session}))/(offset(${totals.timeonsite_average_per_session},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 12
    width: 3
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.transaction_conversion_rate
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.transaction_conversion_rate},1)-${totals.transaction_conversion_rate}))/(offset(${totals.transaction_conversion_rate},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 15
    width: 3
    height: 4
  - title: Revenue
    name: Revenue
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.transactionRevenue_total
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.transactionRevenue_total},1)-${totals.transactionRevenue_total}))/(offset(${totals.transactionRevenue_total},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 21
    width: 3
    height: 4
  - name: "-- Google Analytics Overview --"
    type: text
    title_text: "-- Google Analytics Overview --"
    subtitle_text: Acquisition, Behavior, and Conversion Overview
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "-- What pages are performing the best? --"
    type: text
    title_text: "-- What pages are performing the best? --"
    row: 67
    col: 0
    width: 24
    height: 2
  - title: Top Pages Full Detail
    name: Top Pages Full Detail
    model: google_analytics_suite_block
    explore: ga_sessions
    type: table
    fields:
    - first_page.pageTitle
    - ga_sessions.total_visitors
    - ga_sessions.unique_visitors
    - ga_sessions.session_count
    - totals.bounce_rate
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_transaction
    - totals.transactionRevenue_total
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.total_visitors desc
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: true
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types: {}
    y_axes:
    - label:
      orientation: top
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.average_revenue_per_user
        name: Average Revenue per User
        axisId: totals.average_revenue_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Fuchsia to Green'
    series_colors:
      ga_sessions.unique_visitors: "#286f0f"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    row: 69
    col: 10
    width: 14
    height: 13
  - title: Bounce Rate
    name: Bounce Rate
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.bounce_rate
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.bounce_rate},1)-${totals.bounce_rate}))/(offset(${totals.bounce_rate},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 9
    width: 3
    height: 4
  - title: Avg Revenue per Transaction
    name: Avg Revenue per Transaction
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.average_revenue_per_transaction
    fill_fields:
    - ga_sessions.visitStart_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.average_revenue_per_transaction},1)-${totals.average_revenue_per_transaction}))/(offset(${totals.average_revenue_per_transaction},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 2
    col: 18
    width: 3
    height: 4
  - title: Last 7 Days
    name: Last 7 Days
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitStart_date
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    fill_fields:
    - ga_sessions.visitStart_date
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_date desc
    limit: 7
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: monotone
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Session Returning Visitors
        axisId: ga_sessions.returning_visitors
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Session Count
        axisId: ga_sessions.session_count
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Session Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - "#283C86"
    - "#2D4E7A"
    - "#32616F"
    - "#377363"
    - "#3D8658"
    - "#42984C"
    - "#45A247"
    series_colors: {}
    row: 6
    col: 0
    width: 24
    height: 8
  - title: Engagement by Traffic Source
    name: Engagement by Traffic Source
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.channelGrouping
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - totals.avg_pageview_per_user desc
    limit: 500
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.timeonsite_average_per_session: "#45A247"
      ga_sessions.average_sessions_ver_visitor: "#3A7C5D"
      totals.avg_pageview_per_user: "#356A69"
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    x_axis_label_rotation: -45
    row: 17
    col: 0
    width: 8
    height: 13
  - title: Engagement by Medium
    name: Engagement by Medium
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - trafficSource.medium
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - totals.avg_pageview_per_user desc
    limit: 500
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.timeonsite_average_per_session: "#45A247"
      ga_sessions.average_sessions_ver_visitor: "#3A7C5D"
      totals.avg_pageview_per_user: "#356A69"
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    x_axis_label_rotation: -45
    row: 17
    col: 8
    width: 8
    height: 13
  - title: Engagement by Referrals
    name: Engagement by Referrals
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.referralPath
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
      trafficSource.referralPath: "-NULL"
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 7
    column_limit: 50
    dynamic_fields:
    - table_calculation: referral_path
      label: Referral Path
      expression: substring(${trafficSource.referralPath},0,10)
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.timeonsite_average_per_session: "#45A247"
      ga_sessions.average_sessions_ver_visitor: "#3A7C5D"
      totals.avg_pageview_per_user: "#356A69"
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    hidden_fields:
    - trafficSource.referralPath
    x_axis_label_rotation: -45
    row: 17
    col: 16
    width: 8
    height: 13
  - title: When are Your Users Coming?
    name: When are Your Users Coming?
    model: google_analytics_suite_block
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.visitStart_hour_of_day
    - ga_sessions.visitStart_day_of_week
    - ga_sessions.session_count
    pivots:
    - ga_sessions.visitStart_day_of_week
    fill_fields:
    - ga_sessions.visitStart_hour_of_day
    - ga_sessions.visitStart_day_of_week
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.visitStart_day_of_week 0
    - ga_sessions.visitStart_hour_of_day
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#1f3e5a"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - ga_sessions.session_count
    series_labels:
      ga_sessions.visitStart_hour_of_day: Hour of Day
      ga_sessions.visitStart_day_of_week: Day of Week
    note_state: collapsed
    note_display: above
    note_text: Should be able to cut by any attribute you want
    row: 30
    col: 0
    width: 12
    height: 13
  - title: User Drop-off Rate
    name: User Drop-off Rate
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_column
    fields:
    - user_session_facts.days_active
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - user_session_facts.days_active
    limit: 7
    column_limit: 5
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    show_dropoff: true
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: user_session_facts.count
        name: User Session Facts Count
        axisId: user_session_facts.count
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    series_colors:
      user_session_facts.count: "#4FBC89"
    note_state: collapsed
    note_display: above
    note_text: Should be able to cut and slice this report by channel, medium, and
      referral
    row: 30
    col: 12
    width: 12
    height: 13
  - title: Users & Revenue by Channel
    name: Users & Revenue by Channel
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.channelGrouping
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 500
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.average_revenue_per_user: "#3A7C5D"
      totals.transaction_conversion_rate: "#356A69"
      totals.transactionRevenue_total: "#45A247"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    row: 45
    col: 0
    width: 8
    height: 13
  - title: Users & Revenue by Medium
    name: Users & Revenue by Medium
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.medium
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 500
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.transactionRevenue_total: "#45A247"
      totals.average_revenue_per_user: "#3A7C5D"
      totals.transaction_conversion_rate: "#356A69"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    row: 45
    col: 8
    width: 8
    height: 13
  - title: Users & Revenue by Referrals
    name: Users & Revenue by Referrals
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.referralPath
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
      trafficSource.referralPath: "-NULL"
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 7
    column_limit: 50
    dynamic_fields:
    - table_calculation: referral_path
      label: Referral Path
      expression: substring(${trafficSource.referralPath},0,10)
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.transactionRevenue_total: "#45A247"
      totals.average_revenue_per_user: "#3A7C5D"
      totals.transaction_conversion_rate: "#356A69"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    hidden_fields:
    - trafficSource.referralPath
    x_axis_label_rotation: -45
    row: 45
    col: 16
    width: 8
    height: 13
  - title: Count of Users by LTV
    name: Count of Users by LTV
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_column
    fields:
    - user_session_facts.lifetime_transaction_revenue_tier
    - ga_sessions.channelGrouping
    - ga_sessions.unique_visitors
    pivots:
    - ga_sessions.channelGrouping
    filters:
      ga_sessions.partition_date: 2 years
      user_session_facts.lifetime_transaction_revenue_tier: "-Below 0"
    sorts:
    - user_session_facts.lifetime_transaction_revenue_tier
    - ga_sessions.channelGrouping
    limit: 7
    column_limit: 50
    stacking: normal
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types: {}
    show_dropoff: false
    y_axes:
    - label: Count of Users
      orientation: left
      series:
      - id: user_session_facts.count
        name: User Session Facts
        axisId: user_session_facts.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    series_colors: {}
    colors:
    - 'palette: Default'
    hidden_fields:
    row: 58
    col: 0
    width: 12
    height: 9
  - title: User Retention
    name: User Retention
    model: google_analytics_suite_block
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.session_count
    - user_session_facts.weeks_active
    - user_session_facts.first_start_date_week
    pivots:
    - user_session_facts.weeks_active
    filters:
      ga_sessions.partition_date: 2 years
      user_session_facts.first_start_date_week: 2017/06/14 to 2017/08/01
    sorts:
    - user_session_facts.first_start_date_week
    - user_session_facts.weeks_active 0
    limit: 7
    column_limit: 7
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#1f3e5a"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - ga_sessions.session_count
    note_state: collapsed
    note_display: above
    note_text: Should be able to cut by whatever dimensions
    row: 58
    col: 12
    width: 12
    height: 9
  - title: Top Pages
    name: Top Pages
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_bar
    fields:
    - first_page.pageTitle
    - totals.transaction_conversion_rate
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.partition_date: 2 years
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 10
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types:
      totals.transactionRevenue_total: line
      totals.transaction_conversion_rate: line
      totals.average_revenue_per_user: line
      totals.timeonsite_average_per_session: line
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: custom
      tickDensityCustom: '3'
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    colors:
    - 'palette: Default'
    series_colors:
      ga_sessions.unique_visitors: "#1f3e5a"
      totals.timeonsite_average_per_session: "#45A247"
      totals.transaction_conversion_rate: "#3A7C5D"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.timeonsite_average_per_session
    x_axis_label_rotation: -45
    row: 69
    col: 0
    width: 10
    height: 13
  - name: "-- Where should you acquire your users for Engagement? --"
    type: text
    title_text: "-- Where should you acquire your users for Engagement? --"
    subtitle_text: ''
    body_text: Check out the [Traffic Engagement Overview Dashboard]()
      for more analysis
    row: 14
    col: 0
    width: 24
    height: 3
  - name: "-- Where should you acquire your users for Revenue? --"
    type: text
    title_text: "-- Where should you acquire your users for Revenue? --"
    body_text: Check out the [Transaction and Revenue Dashboard]()
      for more analysis
    row: 43
    col: 0
    width: 24
    height: 2
  filters:
  - name: date
    title: date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
