include: "/shop_test_model/views/shop.view"
include: "/shop_test_model/views/sales_conversion.view"

explore: shop {
  hidden: no

  join: shop_4__active_cpcs {
    view_label: "Shop 4: Active Cpcs"
    sql: LEFT JOIN UNNEST(${shop.active_cpcs}) as shop_4__active_cpcs ;;
    relationship: one_to_many
  }

  join: shop_4__active_verticals {
    view_label: "Shop 4: Active Verticals"
    sql: LEFT JOIN UNNEST(${shop.active_verticals}) as shop_4__active_verticals ;;
    relationship: one_to_many
  }

  join: shop_4__luxury_loft_images {
    view_label: "Shop 4: Luxury Loft Images"
    sql: LEFT JOIN UNNEST(${shop.luxury_loft_images}) as shop_4__luxury_loft_images ;;
    relationship: one_to_many
  }

  join: shop_4__premium_loft_images {
    view_label: "Shop 4: Premium Loft Images"
    sql: LEFT JOIN UNNEST(${shop.premium_loft_images}) as shop_4__premium_loft_images ;;
    relationship: one_to_many
  }

  join: shop_4__active_category_cpcs {
    view_label: "Shop 4: Active Category Cpcs"
    sql: LEFT JOIN UNNEST(${shop.active_category_cpcs}) as shop_4__active_category_cpcs ;;
    relationship: one_to_many
  }

  join: sales_conversion {
    view_label: "Sales conversion"
    type: left_outer
    sql_on: ${shop.date_date} = ${sales_conversion.date_date} AND ${shop.shop_id} = ${sales_conversion.shop_id} ;;
    relationship: one_to_many
  }
}
