view: ft_ntw_moc_raw_cdr_wayne_12_months_partition {
  sql_table_name: `game.FT_NTW_MOC_RAW_CDR_WAYNE_12_MONTHS_PARTITION`
    ;;

  dimension: cell_id {
    type: string
    sql: ${TABLE}.CELL_ID ;;
  }

  dimension: co_type {
    type: string
    sql: ${TABLE}.CO_TYPE ;;
  }

  dimension: dev_type {
    type: string
    sql: ${TABLE}.DEV_TYPE ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.DURATION ;;
  }

  dimension: other_party {
    type: string
    sql: ${TABLE}.OTHER_PARTY ;;
  }

  dimension: served_msisdn {
    type: string
    sql: ${TABLE}.SERVED_MSISDN ;;
  }

  dimension_group: strt_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.STRT_DT ;;
  }

  dimension: strt_hr {
    type: number
    sql: ${TABLE}.STRT_HR ;;
  }

  dimension: subscr_id {
    type: number
    sql: ${TABLE}.SUBSCR_ID ;;
  }

  dimension: subscr_type {
    type: string
    sql: ${TABLE}.SUBSCR_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_distinct_subs {
    type: count_distinct
    sql:  ${subscr_id} ;;
  }
}
