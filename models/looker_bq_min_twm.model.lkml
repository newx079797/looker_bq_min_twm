connection: "looker_bq_min_twm"

# include all the views
include: "/views/**/*.view"

datagroup: looker_bq_min_twm_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_bq_min_twm_default_datagroup

explore: ft_ntw_moc_raw_cdr_wayne_12_months_partition {}

# explore: events {}

# explore: events_ml {}

# explore: events_ml_aggregated {}

# explore: events_ml_clusters {}

