- dashboard: traffic_engagement_overview
  title: Traffic Engagement Overview
  layout: tile
  tile_size: 100

  filters:

    - name: date
      label: "Date"
      type: date_filter
      # default_value: "1 day ago for 1 day"
      default_value: '2013-09-10 00:00:00'

  elements:

    - name: total_visitors
      title: Total Visitors
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.total_visitors]
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

    - name: first_time_visitors
      title: First Time Visitors
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.first_time_visitors]
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

    - name: returning_visitors
      title: Returning Visitors
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [ga_sessions.returning_visitors]
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

    - name: total_sessions
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
      series_types: {}

    - name: page_views_per_session
      title: Average Page Views per Session
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [totals.page_views_session]
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

    - name: average_time_on_site_per_session
      title: Average Session Length
      type: single_value
      model: bq_connectors_ga360
      explore: ga_sessions
      measures: [totals.timeonsite_average_per_session]
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

    - name: conversion_funnel_by_source
      title: Conversion Funnel by Source
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.source]
      measures: [totals.hits_total, totals.pageviews_total, totals.transactions_count]
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.hits_total desc]
      limit: '5'
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_dropoff: true
      series_colors:
        totals.hits_total: "#3B4260"
        totals.pageviews_total: "#1D98D3"
        totals.transactions_count: "#B1B0B0"

    - name: conversion_funnel_by_keyword
      title: Conversion Funnel by Keyword
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.keyword]
      measures: [totals.hits_total, totals.pageviews_total, totals.transactions_count]
      filters:
        trafficSource.keyword: "-NULL,-(not provided)"
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.hits_total desc]
      limit: '5'
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_dropoff: true
      series_colors:
        totals.hits_total: "#3B4260"
        totals.pageviews_total: "#1D98D3"
        totals.transactions_count: "#B1B0B0"


    - name: engagement_by_source
      title: Engagement by Traffic Source
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.source]
      measures: [totals.hits_average_per_session, totals.page_views_session, totals.timeonsite_average_per_session,
        ga_sessions.session_count]
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.session_count desc]
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
      series_types:
        totals.timeonsite_average_per_session: line
        totals.transactionRevenue_total: line
        totals.hits_average_per_session: line
        totals.page_views_session: line
      hidden_series: [totals.timeonsite_average_per_session]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: ga_sessions.session_count,
              name: Session Session Count}]}, {label: !!null '', maxValue: !!null '',
          minValue: !!null '', orientation: left, showLabels: true, showValues: false,
          tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
          valueFormat: !!null '', series: [{id: totals.timeonsite_average_per_session,
              name: Session Time On Site Average Per Session}]}, {label: '', maxValue: !!null '',
          minValue: !!null '', orientation: right, showLabels: true, showValues: false,
          tickDensity: default, tickDensityCustom: !!null '', type: linear, unpinAxis: false,
          valueFormat: !!null '', series: [{id: totals.page_views_session, name: Session PageViews Per Session},
            {id: totals.hits_average_per_session, name: Session Hits Average per Session}]}]
      series_colors:
        ga_sessions.session_count: "#3B4260"
        totals.page_views_session: "#39A736"
        totals.timeonsite_average_per_session: "#B1B0B0"

    - name: revenue_by_source
      title: Revenue by Source
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.source]
      measures: [totals.pageviews_total, totals.transactions_count, totals.transactionRevenue_total]
      dynamic_fields:
      - table_calculation: transaction_conversion_rate
        label: Transaction Conversion Rate
        expression: "${totals.transactions_count}/${totals.pageviews_total}"
        value_format:
        value_format_name: usd_0
      - table_calculation: average_revenue_per_transaction
        label: Average Revenue per Transaction
        expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
        value_format:
        value_format_name: usd_0
      - table_calculation: total_pageviews
        label: Total Pageviews
        expression: "${totals.pageviews_total}"
        value_format:
        value_format_name: decimal_0
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.pageviews_total desc]
      limit: '10'
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      hidden_fields: [totals.transactions_count, totals.transactionRevenue_total, totals.pageviews_total]
      series_colors:
        total_pageviews: "#3B4260"
        transaction_conversion_rate: "#1D98D3"
        average_revenue_per_transaction: "#39A736"
      series_types:
        transaction_conversion_rate: line
        average_revenue_per_transaction: line
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: total_pageviews,
              name: Total Pageviews}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
          orientation: left, showLabels: true, showValues: false, tickDensity: default,
          tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
          series: [{id: transaction_conversion_rate, name: Transaction Conversion Rate}]},
        {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: average_revenue_per_transaction,
              name: Average Revenue per Transaction}]}]


    - name: engagement_by_keyword
      title: Engagement by Keyword Search
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.keyword]
      measures: [totals.hits_average_per_session, totals.page_views_session, totals.timeonsite_average_per_session,
        ga_sessions.session_count]
      filters:
        trafficSource.keyword: "-NULL,-(not provided)"
      listen:
        date: ga_sessions.partition_date
      sorts: [ga_sessions.session_count desc]
      limit: '10'
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
      series_types:
        totals.timeonsite_average_per_session: line
        totals.transactionRevenue_total: line
        totals.hits_average_per_session: line
        totals.page_views_session: line
      hidden_series: [totals.timeonsite_average_per_session]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: ga_sessions.session_count,
              name: Session Session Count}]}, {label: !!null '', maxValue: !!null '',
          minValue: !!null '', orientation: left, showLabels: true, showValues: false,
          tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
          valueFormat: !!null '', series: [{id: totals.timeonsite_average_per_session,
              name: Session Time On Site Average Per Session}]}, {label: '', maxValue: !!null '',
          minValue: !!null '', orientation: right, showLabels: true, showValues: false,
          tickDensity: default, tickDensityCustom: !!null '', type: linear, unpinAxis: false,
          valueFormat: !!null '', series: [{id: totals.page_views_session, name: Session PageViews Per Session},
            {id: totals.hits_average_per_session, name: Session Hits Average per Session}]}]
      series_colors:
        ga_sessions.session_count: "#3B4260"
        totals.page_views_session: "#39A736"
        totals.timeonsite_average_per_session: "#B1B0B0"

    - name: revenue_by_keyword
      title: Revenue by Keyword
      type: looker_column
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.keyword]
      measures: [totals.pageviews_total, totals.transactions_count, totals.transactionRevenue_total]
      dynamic_fields:
      - table_calculation: transaction_conversion_rate
        label: Transaction Conversion Rate
        expression: "${totals.transactions_count}/${totals.pageviews_total}"
        value_format:
        value_format_name: usd_0
      - table_calculation: average_revenue_per_transaction
        label: Average Revenue per Transaction
        expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
        value_format:
        value_format_name: usd_0
      - table_calculation: total_pageviews
        label: Total Pageviews
        expression: "${totals.pageviews_total}"
        value_format:
        value_format_name: decimal_0
      filters:
        trafficSource.keyword: "-NULL,-(not provided)"
      listen:
        date: ga_sessions.partition_date
      sorts: [totals.pageviews_total desc]
      limit: '10'
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      hidden_fields: [totals.transactions_count, totals.transactionRevenue_total, totals.pageviews_total]
      series_colors:
        total_pageviews: "#3B4260"
        transaction_conversion_rate: "#1D98D3"
        average_revenue_per_transaction: "#39A736"
      series_types:
        transaction_conversion_rate: line
        average_revenue_per_transaction: line
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: total_pageviews,
              name: Total Pageviews}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
          orientation: left, showLabels: true, showValues: false, tickDensity: default,
          tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
          series: [{id: transaction_conversion_rate, name: Transaction Conversion Rate}]},
        {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
          showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: average_revenue_per_transaction,
              name: Average Revenue per Transaction}]}]

    - name: traffic_source_full_detail
      title: Traffic Source Full Detail
      type: table
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.source]
      measures: [ga_sessions.session_count, totals.visits_total, ga_sessions.returning_visitors,
        ga_sessions.unique_visitors, totals.page_views_session, totals.timeonsite_average_per_session,
        totals.transactions_count, totals.transactionRevenue_total]
      listen:
        date: ga_sessions.partition_date
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



    - name: keyword_full_detail
      title: Keyword Full Detail
      type: table
      model: bq_connectors_ga360
      explore: ga_sessions
      dimensions: [trafficSource.keyword]
      measures: [ga_sessions.session_count, totals.visits_total, ga_sessions.returning_visitors,
        ga_sessions.unique_visitors, totals.page_views_session, totals.timeonsite_average_per_session,
        totals.transactions_count, totals.transactionRevenue_total]
      filters:
        trafficSource.keyword: "-NULL,-(not provided)"
      listen:
        date: ga_sessions.partition_date
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
