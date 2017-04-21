- dashboard: bounce_rates
  title: Bounce Rates
  layout: tile
  tile_size: 100

  filters:

    - name: date
      label: "Date"
      type: date_filter
      default_value: "7 days ago for 7 day"

  elements:

    - name: average_sessions_per_visitor
      title: Average Sessions per Visitor
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.average_sessions_ver_visitor]
      listen:
        date: ga_sessions.partition_date
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
      series_types:
        __FILE: bq_connector_ga_block/bounce_rates.dashboard.lookml
        __LINE_NUM: 137


    - name: unique_visitors
      title: Unique Visitors
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.unique_visitors]
      listen:
        date: ga_sessions.partition_date
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

    - name: total_session
      title: Total Sessions
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.session_count]
      listen:
        date: ga_sessions.partition_date
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

    - name: total_bounces
      title: Total Bounces
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [totals.bounces_total]
      listen:
        date: ga_sessions.partition_date
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
      series_types:
        __FILE: bq_connector_ga_block/bounce_rates.dashboard.lookml
        __LINE_NUM: 137


    - name: average_bounce_rate
      title: Average Bounce Rate
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [totals.bounce_rate]
      listen:
        date: ga_sessions.partition_date
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



    - name: bounce_rates_over_time
      title: Bounce Rates Over Time
      type: looker_area
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.partition_date]
      measures: [totals.bounce_rate]
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.partition_date desc]
      limit: '500'
      column_limit: '50'
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
      y_axis_tick_density_custom: 7
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
        totals.hits_total: column
      reference_lines: []
      trend_lines: []


    - name: bounce_rates_by_channel
      title: Bounces by Channel
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.channelGrouping]
      measures: [totals.bounce_rate, totals.bounces_total]
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.bounces_total desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/New_York
      stacking: ''
      show_value_labels: false
      label_density: 25
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types:
        totals.bounce_rate: line
      series_colors:
        totals.bounces_total: "#62bad4"
        totals.bounce_rate: "#a9c574"

    - name: bounces_by_browser
      title: Bounces by Browser
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [device.browser]
      measures: [totals.bounces_total, totals.bounce_rate]
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.bounces_total desc]
      limit: '10'
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
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      series_types:
        totals.bounce_rate: line

    - name: bounces_by_visitors
      title: Bounces by Visitor Frequency
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.visitnumbertier]
      measures: [totals.bounce_rate, totals.bounces_total]
      listen:
        date: ga_sessions.partition_date
      filters:
        ga_sessions.visitnumbertier: "-Below 1"
      sorts: [ga_sessions.visitnumbertier]
      limit: '500'
      column_limit: '50'
      query_timezone: America/New_York
      stacking: ''
      show_value_labels: false
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types:
        totals.bounce_rate: line
      series_labels: {}

    - name: new_vs_returning_users
      title: New vs. Returning User Sessions
      type: looker_area
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.partition_date]
      measures: [ga_sessions.returning_visitors, ga_sessions.unique_visitors]
      filters:
        ga_sessions.visitnumbertier: "-Below 1"
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.partition_date desc, ga_sessions.visitnumbertier__sort_]
      limit: '500'
      column_limit: '50'
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
      show_null_points: true
      point_style: none
      interpolation: linear
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
      ordering: none
      show_null_labels: false
      series_types: {}

    - name: new_vs_returning_bounce_rates_over_time
      title: New vs Returning User Bounce Rates Over Time
      type: looker_line
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.first_time_visitor, ga_sessions.partition_date]
      pivots: [ga_sessions.first_time_visitor]
      fill_fields: [ga_sessions.first_time_visitor]
      measures: [totals.bounce_rate]
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.partition_date desc, ga_sessions.first_time_visitor]
      limit: '500'
      column_limit: '50'
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
      series_types: {}
      y_axis_unpin: true
      series_labels:
        No - Session Bounce Rate: Return Visitor Bounce Rate
        Yes - Session Bounce Rate: First Time Visitor Bounce Rate

    - name: new_vs_returning_bounce_totals
      title: New vs Returning Bounce Totals
      type: looker_pie
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [ga_sessions.first_time_visitor]
      fill_fields: [ga_sessions.first_time_visitor]
      measures: [totals.bounces_total]
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.first_time_visitor]
      limit: '500'
      column_limit: '50'
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
      series_types: {}
      y_axis_unpin: true
      series_labels:
        No - Session Bounce Rate: Return Visitor Bounce Rate
        Yes - Session Bounce Rate: First Time Visitor Bounce Rate

    - name: top_performing_article_full_detail
      title: Top Performing Articles (Full Detail)
      type: table
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [hits_page.pageTitle]
      measures: [ga_sessions.session_count, totals.bounces_total, totals.bounce_rate,
        totals.timeonsite_average_per_session, ga_sessions.unique_visitors, ga_sessions.returning_visitors,
        ga_sessions.total_visitors, totals.transactions_count, totals.transactionRevenue_total]
      listen:
        date: ga_sessions.partition_date
      filters:
        hits_page.pageTitle: "-NULL"
      sorts: [ga_sessions.session_count desc]
      limit: '500'
      column_limit: '50'
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
      series_types: {}


    - name: top_performing_ads
      title: Top Performing Articles
      type: looker_bar
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [hits_page.pageTitle]
      measures: [totals.bounce_rate, ga_sessions.session_count]
      listen:
        date: ga_sessions.partition_date
      filters:
        totals.bounce_rate: ">.1"
      sorts: [ga_sessions.session_count desc]
      limit: '10'
      column_limit: '50'
      query_timezone: America/New_York
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: true
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types:
        totals.bounce_rate: line
      series_colors:
        totals.bounce_rate: "#a9c574"
        ga_sessions.session_count: "#62bad4"
