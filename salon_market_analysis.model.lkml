connection: "attom_property_data"

# include all the views
include: "*.view"
include: "//census_analysis/salon_listings.view.lkml"
include: "//census_analysis/ziptolatlong.view.lkml"
include: "//census_analysis/base_growth_score.view.lkml"

datagroup: salon_market_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: salon_market_report_default_datagroup

explore: base_growth_score {
  view_name: base_growth_score
  group_label: "Salon Go-To-Market"
  label: "Base Report Model"
  join: salon_listings {
    relationship: many_to_one
    sql_on: ${salon_listings.zip} = ${base_growth_score.zipcodes} ;;
  }

  join: ziptolatlong {
    relationship: one_to_one
    sql_on: ${ziptolatlong.zip}=${base_growth_score.zipcodes} ;;
  }

  join: commercial_office_buildings {
    relationship: many_to_one
    sql_on: ${base_growth_score.zipcodes}=${commercial_office_buildings.address_line_1} ;;
  }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
}
