connection: "carlos-looker-training"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: laura_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: laura_dev_default_datagroup

explore: orders {}

explore: order_items_extended {}

explore: distribution_centers {}

explore: inventory_items {}

explore: order_items {}

explore: products {}

explore: events {}

explore: users {}
