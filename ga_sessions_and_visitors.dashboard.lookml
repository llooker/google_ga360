- dashboard: ga_sessions_and_visitors
  title: Ga Sessions and Visitors
  layout: tile
  tile_size: 100

  filters:

    - name: date
      label: "Date"
      type: date_filter
      default_value: "7 days ago for 7 day"

  elements:
  - name: total_hits
    title: Total Hits
    type: single_value
    model: bq_connectors_ga360
    explore: ga_sessions
    measures: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors,
      totals.timeonsite_average_per_session]
    listen:
       date: ga_sessions.partition_date
    sorts: [totals.hits_total desc]
    limit: '500'
    column_limit: '50'
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
    hidden_fields: [ga_sessions.session_count, ga_sessions.unique_visitors, totals.timeonsite_average_per_session]


  - name: total_sessions
    title: Total Sessions
    type: single_value
    model: bq_connectors_ga360
    explore: ga_sessions
    measures: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors,
      totals.timeonsite_average_per_session]
    listen:
      date: ga_sessions.partition_date
    sorts: [totals.hits_total desc]
    limit: '500'
    column_limit: '50'
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
    hidden_fields: [ga_sessions.unique_visitors, totals.timeonsite_average_per_session,
      totals.hits_total]

  - name: unique_visitors
    title: Unique Visitors
    type: single_value
    model: bq_connectors_ga360
    explore: ga_sessions
    measures: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors,
      totals.timeonsite_average_per_session]
    listen:
       date: ga_sessions.partition_date
    sorts: [totals.hits_total desc]
    limit: '500'
    column_limit: '50'
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
    hidden_fields: [totals.timeonsite_average_per_session, totals.hits_total, ga_sessions.session_count]

  - name: avg_time_per_session
    title: Average Seconds on Site per Session
    type: single_value
    model: bq_connectors_ga360
    explore: ga_sessions
    measures: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors,
      totals.timeonsite_average_per_session]
    listen:
      date: ga_sessions.partition_date
    sorts: [totals.hits_total desc]
    limit: '500'
    column_limit: '50'
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
    hidden_fields: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors]

  - name: stats_7_days
    title: Stats for Last 7 Days
    type: looker_line
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [ga_sessions.partition_date]
    measures: [totals.hits_total, ga_sessions.session_count, ga_sessions.unique_visitors,
      totals.timeonsite_average_per_session]
    listen:
      date: ga_sessions.partition_date
    sorts: [ga_sessions.partition_date]
    limit: '500'
    column_limit: '50'
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    hidden_series: []
    x_axis_label: Date

  # - name: visitors_source
  #   title: Visitors' Source
  #   type: looker_pie
  #   model: bq_connectors_ga360
  #   explore: ga_sessions
  #   dimensions: [trafficSource.source]
  #   measures: [ga_sessions.unique_visitors]
  #   listen:
  #     date: ga_sessions.partition_date
  #   sorts: [ga_sessions.unique_visitors desc]
  #   limit: '50'
  #   column_limit: '50'
  #   query_timezone: America/New_York
  #   value_labels: legend
  #   label_type: labPer
  #   stacking: ''
  #   show_value_labels: false
  #   label_density: 25
  #   legend_position: center
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: true
  #   limit_displayed_rows: false
  #   y_axis_combined: true
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   x_axis_scale: auto
  #   y_axis_scale_mode: linear
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   series_types: {}
  #   inner_radius: 30

  - name: session_map
    title: Where in the US are Sessions From?
    type: looker_map
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [geoNetwork.location]
    measures: [ga_sessions.session_count]
    listen:
      date: ga_sessions.partition_date
    filters:
      geoNetwork.location_bin_level: '8'
      geoNetwork.location: inside box from 55.7765730186677, -157.50000000000003 to 0, -45
    sorts: [ga_sessions.session_count desc]
    limit: '5000'
    column_limit: '50'
    query_timezone: America/New_York
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: false
    map_zoomable: false
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
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
    map_latitude: 39.63953756436671
    map_longitude: -96.41601562500001
    map_zoom: 4
    map_value_colors: []
    map_value_scale_clamp_min: 100
    map_value_scale_clamp_max: 1000

  - name: top_10_pages
    title: Top 10 Pages
    type: table
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [hits_page.pagePath]
    measures: [ga_sessions.session_count, ga_sessions.unique_visitors, totals.newVisits_total,
      totals.timeonsite_average_per_session]
    listen:
      date: ga_sessions.partition_date
    sorts: [ga_sessions.session_count desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
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


  - name: social_users
    title: How do Social Users Consume?
    type: looker_donut_multiples
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [hits_social.socialNetwork, device.operatingSystem]
    pivots: [device.operatingSystem]
    measures: [ga_sessions.unique_visitors]
    listen:
      date: ga_sessions.partition_date
    filters:
      hits_social.socialNetwork: Facebook,Twitter,reddit
    sorts: [ga_sessions.unique_visitors desc 0, hits_social.socialNetwork, device.operatingSystem]
    limit: '500'
    column_limit: '50'
    query_timezone: America/New_York
    show_value_labels: true
    font_size: 12
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: session_histogram
    title: How Long are Sessions?
    type: looker_bar
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [totals.timeonsite_tier]
    measures: [ga_sessions.session_count]
    listen:
      date: ga_sessions.partition_date
    filters:
      totals.timeonsite_tier: "-Undefined"
    sorts: [totals.timeonsite_tier]
    limit: '500'
    column_limit: '50'
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
    series_types: {}

  - name: traffic_source
    title: Traffic Sources
    type: table
    model: bq_connectors_ga360
    explore: ga_sessions
    dimensions: [trafficSource.source]
    measures: [ga_sessions.unique_visitors, totals.timeonsite_average_per_session, ga_sessions.session_count,
      totals.bounce_rate, totals.transactionRevenue_total]
    listen:
      date: ga_sessions.partition_date
    sorts: [ga_sessions.unique_visitors desc]
    limit: '500'
    column_limit: '50'
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
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
