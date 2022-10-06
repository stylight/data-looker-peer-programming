view: shop {
  sql_table_name: `stylight-partner-prod.entity.shop_4`
    ;;

  dimension: active_category_cpcs {
    hidden: yes
    sql: ${TABLE}.active_category_cpcs ;;
  }

  dimension: active_cpcs {
    hidden: yes
    sql: ${TABLE}.active_cpcs ;;
  }

  dimension: active_verticals {
    hidden: yes
    sql: ${TABLE}.active_verticals ;;
  }

  dimension: affiliate {
    type: string
    description: "Affiliate status [Stylight_click Amazon_pn Cpc_without_invoice Fake_cpo]"
    sql: ${TABLE}.affiliate ;;
  }

  dimension: company_id {
    type: number
    description: "Company id"
    sql: ${TABLE}.company_id ;;
  }

  dimension: company_locale {
    type: string
    description: "Company locale"
    sql: ${TABLE}.company_locale ;;
  }

  dimension: company_name {
    type: string
    description: "Company name"
    sql: ${TABLE}.company_name ;;
  }

  dimension_group: date {
    type: time
    description: "Date of data insertion"
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

  dimension_group: date_created {
    type: time
    description: "Row creation timestamp"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.date_created ;;
  }

  dimension: dri {
    type: string
    description: "Email address of dri"
    sql: ${TABLE}.dri ;;
  }

  dimension: event_id {
    type: string
    description: "Event tracking id"
    sql: ${TABLE}.event_id ;;
  }

  dimension: feed_quality_score {
    type: number
    description: "Feed quality score"
    sql: ${TABLE}.feed_quality_score ;;
  }

  dimension: homepage {
    type: string
    description: "URL link of shop homepage"
    sql: ${TABLE}.homepage ;;
  }

  dimension: is_contract_signed {
    type: yesno
    description: "Indicates if contract signed"
    sql: ${TABLE}.is_contract_signed ;;
  }

  dimension: is_conversion_tracking {
    type: yesno
    description: "Indicates conversion tracking enabled or not"
    sql: ${TABLE}.is_conversion_tracking ;;
  }

  dimension: is_event_automation {
    type: yesno
    description: "Indicates if event automation is enabled or disabled for a shop. This involves automatically switching shops to offline mode when the monthly budget for the shop is reached"
    sql: ${TABLE}.is_event_automation ;;
  }

  dimension: is_last_action_automatic {
    type: yesno
    description: "Indicates whether shop last event type was an automatic action or not"
    sql: ${TABLE}.is_last_action_automatic ;;
  }

  dimension: is_luxury_loft {
    type: yesno
    description: "Indicates whether luxury loft is enabled on the contract"
    sql: ${TABLE}.is_luxury_loft ;;
  }

  dimension: is_multi_brand {
    type: yesno
    description: "Multi brand shop"
    sql: ${TABLE}.is_multi_brand ;;
  }

  dimension: is_online {
    type: yesno
    description: "Whether or not this shop should be online providing there is a valid contract currently active"
    sql: ${TABLE}.is_online ;;
  }

  dimension: is_premium {
    type: yesno
    description: "Indicates that the shop gets a more beneficial display on stylight. This is not related to premium loft"
    sql: ${TABLE}.is_premium ;;
  }

  dimension: is_premium_loft {
    type: yesno
    description: "Indicates whether premium loft is enabled on the contract"
    sql: ${TABLE}.is_premium_loft ;;
  }

  dimension: is_sem_enabled {
    type: yesno
    description: "Indicate if SEM enabled for the shop. Refrenced from stylight-production.entity.sem_exclusion"
    sql: ${TABLE}.is_sem_enabled ;;
  }

  dimension: last_comment {
    type: string
    description: "Shop last comment associated with shop last event type"
    sql: ${TABLE}.last_comment ;;
  }

  dimension: last_event_id {
    type: number
    description: "Shop last event id from PGS shop events table"
    sql: ${TABLE}.last_event_id ;;
  }

  dimension_group: last_event_timestamp {
    type: time
    description: "Timestamp of shop last event from PGS shop events table"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.last_event_timestamp ;;
  }

  dimension: last_event_type {
    type: string
    description: "Shop last event type [Online, InPreparation, OnlineWithoutUpdates, Offline, RequestInPreparation, RequestOffline, ContractSigned, Deactivated, RequestInPreparationDenied, TestingMode]"
    sql: ${TABLE}.last_event_type ;;
  }

  dimension: locale {
    type: string
    description: "Shop locale"
    sql: ${TABLE}.locale ;;
  }

  dimension: logo_image {
    type: string
    description: "Logo image url link"
    sql: ${TABLE}.logo_image ;;
  }

  dimension: luxury_loft_images {
    hidden: yes
    sql: ${TABLE}.luxury_loft_images ;;
  }

  dimension: monthly_budget_change_reason {
    type: string
    description: "Monthly budget change reason"
    sql: ${TABLE}.monthly_budget_change_reason ;;
  }

  dimension: monthly_budget_eur {
    type: number
    description: "Latest monthly budget"
    sql: ${TABLE}.monthly_budget_eur ;;
  }

  dimension: monthly_budget_spent_eur {
    type: number
    description: "Latest monthly budget spent"
    sql: ${TABLE}.monthly_budget_spent_eur ;;
  }

  dimension: orig_cur {
    type: string
    description: "Original currency"
    sql: ${TABLE}.orig_cur ;;
  }

  dimension: premium_loft_images {
    hidden: yes
    sql: ${TABLE}.premium_loft_images ;;
  }

  dimension: _product_cnt {
    type: number
    hidden: yes
    description: "Most recent live product count"
    sql: ${TABLE}.product_cnt ;;
  }

  dimension: shop_id {
    type: number
    description: "Shop ID"
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_name {
    type: string
    description: "Shop name"
    sql: ${TABLE}.shop_name ;;
  }

  dimension: technical_contact__email {
    type: string
    sql: ${TABLE}.technical_contact.email ;;
    group_label: "Technical Contact"
    group_item_label: "Email"
  }

  dimension: technical_contact__first_name {
    type: string
    sql: ${TABLE}.technical_contact.first_name ;;
    group_label: "Technical Contact"
    group_item_label: "First Name"
  }

  dimension: technical_contact__last_name {
    type: string
    sql: ${TABLE}.technical_contact.last_name ;;
    group_label: "Technical Contact"
    group_item_label: "Last Name"
  }

  dimension: technical_contact__phone_number {
    type: string
    sql: ${TABLE}.technical_contact.phone_number ;;
    group_label: "Technical Contact"
    group_item_label: "Phone Number"
  }

  dimension: type {
    type: string
    description: "Shop type [NotTopShop, TopShop, ReferenceShop]"
    sql: ${TABLE}.type ;;
  }

  dimension: shop_id_name {
    type: string
    description: "Shop ID + its name"
    sql: CONCAT(${shop_id}, ' - ', ${shop_name}) ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [shop_name, company_name, technical_contact__last_name, technical_contact__first_name]
  # }

  parameter: product_metric_picker {
    type: unquoted
    description: "Picker for choosing metric type for product count"
    allowed_value: {
      label: "Product sum"
      value: "SUM"
    }
    allowed_value: {
      label: "Product average"
      value: "AVG"
    }
    allowed_value: {
      label: "Product minimum"
      value: "MIN"
    }
  }

  parameter: timeframe_picker {
    type: string
    allowed_value: { label: "Date" value: "Date" }
    allowed_value: { label: "Month" value: "Month" }
    allowed_value: { label: "Quarter" value: "Quarter" }
    default_value: "Date"
  }

  dimension: dynamic_timeframe {
    type: string
    label_from_parameter: timeframe_picker
    sql: CASE
          WHEN {% parameter timeframe_picker %} = "Month" THEN CAST(CONCAT(${date_month}, "-01") AS DATE)
          WHEN {% parameter timeframe_picker %} = "Quarter" THEN CAST(CONCAT(${date_quarter}, "-01") AS DATE)
          ELSE ${date_date} END;;
  }

  measure: product_cnt {
    group_label: "Product count metrics"
    label: "Product count"
    description: "Number of products"
    type: sum
    sql: ${_product_cnt} ;;
  }

  measure: sem_product_cnt {
    group_label: "Product count metrics"
    label: "SEM product count"
    description: "Number of products where SEM is enabled"
    type: sum
    filters: [is_sem_enabled: "Yes"]
    sql: ${_product_cnt} ;;
  }

  measure: parametrized_product_cnt {
    group_label: "Product count metrics"
    label: "Parametrized product count"
    type: number
    sql: {% parameter product_metric_picker %}(${_product_cnt}) ;;
  }

  measure: count_count {
    type:  count
  }

  measure: count_distinct {
    type:  count_distinct
  }

}

view: shop__active_cpcs {
  dimension: cpc_eur {
    type: number
    sql: cpc_eur ;;
  }

  dimension: cpc_orig_cur_eur {
    type: number
    sql: cpc_orig_cur_eur ;;
  }

  dimension: device_type_id {
    type: string
    sql: device_type_id ;;
  }

  dimension: ecpc_source {
    type: string
    sql: ecpc_source ;;
  }

  dimension: is_bidding {
    type: yesno
    sql: is_bidding ;;
  }

  dimension: is_device_pricing {
    type: yesno
    sql: is_device_pricing ;;
  }

  dimension: orig_cur {
    type: string
    sql: orig_cur ;;
  }

  dimension: shop__active_cpcs {
    type: string
    description: "Active CPCs"
    hidden: yes
    sql: shop_4__active_cpcs ;;
  }

  dimension_group: update_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: update_timestamp ;;
  }

  dimension: vertical_id {
    type: string
    sql: vertical_id ;;
  }
}

view: shop__active_verticals {
  dimension: shop__active_verticals {
    type: string
    description: "Active verticals [Fashion, HomeAndLiving, Beauty]"
    sql: shop__active_verticals ;;
  }
}

view: shop__luxury_loft_images {
  dimension: shop__luxury_loft_images {
    type: string
    description: "Luxury loft images of a shop"
    sql: shop__luxury_loft_images ;;
  }
}

view: shop__premium_loft_images {
  dimension: shop__premium_loft_images {
    type: string
    description: "Premium loft images of a shop"
    sql: shop__premium_loft_images ;;
  }
}

view: shop__active_category_cpcs {
  dimension: cpc_eur {
    type: number
    sql: cpc_eur ;;
  }

  dimension: cpc_orig_cur {
    type: number
    sql: cpc_orig_cur ;;
  }

  dimension: currency {
    type: string
    sql: currency ;;
  }

  dimension: device_type_id {
    type: string
    sql: device_type_id ;;
  }

  dimension: shop__active_category_cpcs {
    type: string
    description: "Category CPCs that would apply for clicks made today. Null when not applicable"
    hidden: yes
    sql: shop__active_category_cpcs ;;
  }

  dimension: tag_id {
    type: number
    sql: tag_id ;;
  }
}
