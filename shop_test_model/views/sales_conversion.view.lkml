view: sales_conversion {
  sql_table_name: `dp-production.sales_report_tracking.sales_conversion_2`
    ;;

  dimension: abtest {
    hidden: yes
    sql: ${TABLE}.abtest ;;
  }

  dimension: campaign_id {
    type: number
    description: "Stylight campaign id defining traffic acquisition source"
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: clickout_id {
    type: string
    description: "Clickout uuid"
    sql: ${TABLE}.clickout_id ;;
  }

  dimension_group: date {
    type: time
    description: "Date of clickout"
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
    sql: ${TABLE}.date ;;
  }

  dimension_group: date_timestamp {
    type: time
    description: "timestamp of clickout"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_timestamp ;;
  }

  dimension: device_type_id {
    type: number
    description: "Stylight device type id of clickout"
    sql: ${TABLE}.device_type_id ;;
  }

  dimension: device_type_name {
    type: string
    description: "Stylight device type name, `desktop`, `mobile`, `tablet` or `other`"
    sql: ${TABLE}.device_type_name ;;
  }

  dimension: is_billable {
    type: yesno
    description: "Flag based on BD clickout invalidation"
    sql: ${TABLE}.is_billable ;;
  }

  dimension: is_valid_tracking {
    type: yesno
    description: "Based on rule set (30d window), ROAS between 0.1 and 15, more than 100 clickouts, tracking is set as valid or not"
    sql: ${TABLE}.is_valid_tracking ;;
  }

  dimension: locale {
    type: string
    description: "Locale of shop"
    sql: ${TABLE}.locale ;;
  }

  dimension: sale_cnt {
    type: number
    description: "total number of sales of clickout in 7 days attribution window"
    sql: ${TABLE}.sale_cnt ;;
  }

  dimension: shop_id {
    type: number
    description: "Stylight shop_id based on clickout id"
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_revenue_eur {
    type: number
    description: "sum of sales revenue of shop for the month"
    sql: ${TABLE}.shop_revenue_eur ;;
  }

  dimension: site_id {
    type: number
    description: "Site id of shop"
    sql: ${TABLE}.site_id ;;
  }

  dimension: source_id {
    type: number
    description: "Source of clickout, `web` = 1, `banner` = 7, `app` = 4"
    sql: ${TABLE}.source_id ;;
  }

  dimension: stylight_revenue_eur {
    type: number
    description: "sum of shop provided revenue of stylight for the month"
    sql: ${TABLE}.stylight_revenue_eur ;;
  }

  dimension: tracking_type {
    type: string
    description: "Defines source of sales tracking data"
    sql: ${TABLE}.tracking_type ;;
  }

  dimension: vertical_id {
    type: number
    description: "Vertical id of clickout"
    sql: ${TABLE}.vertical_id ;;
  }

  measure: count {
    type: count
    drill_fields: [device_type_name]
  }
}

view: sales_conversion_2__abtest {
  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: sales_conversion_2__abtest {
    type: string
    description: "A/B test scenario"
    hidden: yes
    sql: sales_conversion_2__abtest ;;
  }

  dimension: variant {
    type: string
    sql: variant ;;
  }
}
