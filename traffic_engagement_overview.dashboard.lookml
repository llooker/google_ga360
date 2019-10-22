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
  - title: Total Visitors
    name: Total Visitors
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.total_visitors
    filters: {}
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 0
    width: 5
    height: 2
  - title: Unique Visitors
    name: Unique Visitors
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 5
    width: 5
    height: 2
  - title: Returning Visitors
    name: Returning Visitors
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 6
    col: 0
    width: 5
    height: 2
  - title: First Time Visitors
    name: First Time Visitors
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 4
    col: 0
    width: 5
    height: 2
  - title: Sessions per Visitor
    name: Sessions per Visitor
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 6
    col: 10
    width: 5
    height: 2
  - title: Avg Pageviews
    name: Avg Pageviews
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 4
    col: 10
    width: 5
    height: 2
  - title: Avg Session Length
    name: Avg Session Length
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 2
    col: 10
    width: 5
    height: 2
  - title: Keyword Full Detail
    name: Keyword Full Detail
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 22
    col: 12
    width: 12
    height: 12
  - title: Traffic Source Full Detail
    name: Traffic Source Full Detail
    model: google_analytics_suite_block
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
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 34
    col: 0
    width: 12
    height: 12
  - title: Top 15 Pages - First Page Visited
    name: Top 15 Pages - First Page Visited
    model: google_analytics_suite_block
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
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 54
    col: 0
    width: 24
    height: 8
  - title: Visitor Locations
    name: Visitor Locations
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_map
    fields:
    - geoNetwork.country
    - ga_sessions.first_time_visitors
    - ga_sessions.returning_visitors
    filters: {}
    sorts:
    - geoNetwork.country
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    series_types: {}
    map_latitude: 44.33956524809713
    map_longitude: 0
    map_zoom: 1
    listen:
      Date: ga_sessions.partition_date
    row: 2
    col: 15
    width: 9
    height: 6
  - title: Bounce Rate
    name: Bounce Rate
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.bounce_rate
    filters: {}
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
    row: 6
    col: 5
    width: 5
    height: 2
  - title: Bounces
    name: Bounces
    model: google_analytics_suite_block
    explore: ga_sessions
    type: single_value
    fields:
    - totals.bounces_total
    filters: {}
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
    row: 4
    col: 5
    width: 5
    height: 2
  - title: Time Series
    name: Time Series
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitStart_date
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - totals.page_views_session
    - totals.bounce_rate
    fill_fields:
    - ga_sessions.visitStart_date
    filters:
      ga_sessions.partition_date: 2017/07/16 20:52 to 2017/08/01 20:52
    sorts:
    - ga_sessions.visitStart_date desc
    limit: 500
    column_limit: 50
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#1f3e5a"
    - "#2D4E7A"
    - "#32616F"
    - "#377363"
    - "#3D8658"
    - "#42984C"
    - "#45A24"
    series_colors: {}
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
      - id: ga_sessions.average_sessions_ver_visitor
        name: Session Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
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
      - id: totals.bounce_rate
        name: Session Bounce Rate
        axisId: totals.bounce_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: left
      series:
      - id: totals.page_views_session
        name: Session PageViews Per Session
        axisId: totals.page_views_session
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    hidden_series:
    - ga_sessions.returning_visitors
    - ga_sessions.average_sessions_ver_visitor
    - totals.page_views_session
    - totals.bounce_rate
    row: 8
    col: 0
    width: 24
    height: 6
  - title: User Conversion Funnel by Source
    name: User Conversion Funnel by Source
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_column
    fields:
    - trafficSource.source
    - ga_sessions.session_count
    - ga_sessions.unique_visitors
    - totals.transactions_count
    filters: {}
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
      ga_sessions.unique_visitors: "#356A69"
      totals.transactions_count: "#3A7C5D"
    colors:
    - 'palette: Default'
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 0
    width: 12
    height: 8
  - title: User Conversion Funnel by Keyword
    name: User Conversion Funnel by Keyword
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_column
    fields:
    - trafficSource.keyword
    - ga_sessions.session_count
    - ga_sessions.unique_visitors
    - totals.transactions_count
    filters: {}
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
      ga_sessions.unique_visitors: "#356A69"
      totals.transactions_count: "#3A7C5D"
    colors:
    - 'palette: Default'
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 14
    col: 12
    width: 12
    height: 8
  - title: Engagement by Keyword Search
    name: Engagement by Keyword Search
    model: google_analytics_suite_block
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 567
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 555
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 585
      - id: average_time_spent_per_page
        name: Average Time Spent per Page
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 589
      - id: average_pageviews_per_session
        name: Average Pageviews per Session
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 591
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 573
    series_colors:
      total_sessions: "#1f3e5a"
      average_time_per_session: "#45A247"
      average_pageviews_per_session: "#3A7C5D"
      average_time_spent_per_page: "#356A69"
    hidden_fields:
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    label_color: []
    colors:
    - 'palette: Default'
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 22
    col: 0
    width: 12
    height: 12
  - title: Engagement by Traffic Source
    name: Engagement by Traffic Source
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_bar
    fields:
    - trafficSource.source
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    filters: {}
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 1038
        axisId: average_pageviews_per_session
      - id: average_time_per_session
        name: Average Time per Session
        axisId: average_time_per_session
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 1043
      - id: average_time_spent_per_page
        name: Average Time Spent per Page
        axisId: average_time_spent_per_page
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 1046
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 1026
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 1063
        axisId: total_sessions
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 1051
    series_colors:
      ga_sessions.session_count: "#3B4260"
      totals.page_views_session: "#39A736"
      totals.timeonsite_average_per_session: "#B1B0B0"
      total_sessions: "#1f3e5a"
      average_time_per_session: "#45A247"
      average_pageviews_per_session: "#3A7C5D"
      average_time_spent_per_page: "#356A69"
    hidden_fields:
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - ga_sessions.session_count
    label_color: []
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 34
    col: 12
    width: 12
    height: 12
  - title: Top Performing First Pages Visited
    name: Top Performing First Pages Visited
    model: google_analytics_suite_block
    explore: ga_sessions
    type: looker_line
    fields:
    - first_page.pageTitle
    - totals.pageviews_total
    - totals.page_views_session
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    filters: {}
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
      total_sessions: "#1f3e5a"
      average_time_per_session: "#45A247"
      average_pageviews_per_session: "#3A7C5D"
      average_time_spent_per_page: "#356A69"
    label_color: []
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 845
      - id: average_pageviews_per_session
        name: Average Pageviews per Session
        axisId: average_pageviews_per_session
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 848
      - id: average_time_per_session
        name: Average Time per Session
        axisId: average_time_per_session
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 851
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 833
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
        __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
        __LINE_NUM: 866
      __FILE: google_blocks/traffic_engagement_overview.dashboard.lookml
      __LINE_NUM: 854
    hidden_series:
    - average_time_spent_per_page
    - average_pageviews_per_session
    colors:
    - 'palette: Default'
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 46
    col: 0
    width: 24
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 12 months
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
    allow_multiple_values: true
    required: false
    model: google_analytics_suite_block
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.campaign
  - name: First Time Visitor
    title: First Time Visitor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: google_analytics_suite_block
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.first_time_visitor
