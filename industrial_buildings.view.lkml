view: industrial_buildings {
  sql_table_name: ATTOM_PROPERTY_DATA.INDUSTRIAL_BUILDINGS ;;

  dimension: _file {
    type: string
    sql: ${TABLE}."_FILE" ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: _line {
    type: number
    sql: ${TABLE}."_LINE" ;;
  }

  dimension: address_country {
    type: string
    sql: ${TABLE}."ADDRESS_COUNTRY" ;;
  }

  dimension: address_country_subd {
    type: string
    sql: ${TABLE}."ADDRESS_COUNTRY_SUBD" ;;
  }

  dimension: address_line_1 {
    type: string
    sql: ${TABLE}."ADDRESS_LINE_1" ;;
  }

  dimension: address_line_2 {
    type: string
    sql: ${TABLE}."ADDRESS_LINE_2" ;;
  }

  dimension: address_locality {
    type: string
    sql: ${TABLE}."ADDRESS_LOCALITY" ;;
  }

  dimension: address_match_code {
    type: string
    sql: ${TABLE}."ADDRESS_MATCH_CODE" ;;
  }

  dimension: address_one_line {
    type: string
    sql: ${TABLE}."ADDRESS_ONE_LINE" ;;
  }

  dimension: address_postal_1 {
    type: zipcode
    sql: ${TABLE}."ADDRESS_POSTAL_1" ;;
  }

  dimension: address_postal_2 {
    type: string
    sql: ${TABLE}."ADDRESS_POSTAL_2" ;;
  }

  dimension: address_postal_3 {
    type: string
    sql: ${TABLE}."ADDRESS_POSTAL_3" ;;
  }

  dimension: assd_ttl_value {
    type: number
    sql: ${TABLE}."ASSD_TTL_VALUE" ;;
    value_format: "$0.00"
  }

  dimension: identifier_apn {
    type: string
    sql: ${TABLE}."IDENTIFIER_APN" ;;
  }

  dimension: identifier_apn_orig {
    type: string
    sql: ${TABLE}."IDENTIFIER_APN_ORIG" ;;
  }

  dimension: identifier_attom_id {
    type: number
    sql: ${TABLE}."IDENTIFIER_ATTOM_ID" ;;
  }

  dimension: identifier_fips {
    type: number
    sql: ${TABLE}."IDENTIFIER_FIPS" ;;
  }

  dimension: identifier_ob_prop_id {
    type: number
    sql: ${TABLE}."IDENTIFIER_OB_PROP_ID" ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}."LAST_MODIFIED" ;;
  }

  dimension: levels {
    type: number
    sql: ${TABLE}."LEVELS" ;;
  }

  dimension: location_accuracy {
    type: string
    sql: ${TABLE}."LOCATION_ACCURACY" ;;
  }

  dimension: location_distance {
    type: number
    sql: ${TABLE}."LOCATION_DISTANCE" ;;
  }

  dimension: location_elevation {
    type: number
    sql: ${TABLE}."LOCATION_ELEVATION" ;;
  }

  dimension: location_geoid {
    type: string
    sql: ${TABLE}."LOCATION_GEOID" ;;
  }

  dimension: location_latitude {
    type: number
    sql: ${TABLE}."LOCATION_LATITUDE" ;;
  }

  dimension: location_longitude {
    type: number
    sql: ${TABLE}."LOCATION_LONGITUDE" ;;
  }

  dimension: lat_long {
    type: location
    sql_latitude: ${TABLE}."LOCATION_LATITUDE" ;;
    sql_longitude:  ${TABLE}."LOCATION_LONGITUDE";;
  }

  dimension: mkt_impr_value {
    type: number
    sql: ${TABLE}."MKT_IMPR_VALUE" ;;
    value_format: "$0.00"
  }

  dimension: mkt_land_value {
    type: number
    sql: ${TABLE}."MKT_LAND_VALUE" ;;
    value_format: "$0.00"
  }

  dimension: prop_class {
    type: string
    sql: ${TABLE}."PROP_CLASS" ;;
  }

  dimension: prop_sub_type {
    type: string
    sql: ${TABLE}."PROP_SUB_TYPE" ;;
  }

  dimension: size_ind {
    type: string
    sql: ${TABLE}."SIZE_IND" ;;
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}."TAX_AMT" ;;
    value_format: "$0.00"
  }

  dimension: units_count {
    type: number
    sql: ${TABLE}."UNITS_COUNT" ;;
  }

  dimension: universal_size {
    type: number
    sql: ${TABLE}."UNIVERSAL_SIZE" ;;
  }

  dimension_group: vintage_last_modified {
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
    sql: ${TABLE}."VINTAGE_LAST_MODIFIED" ;;
  }

  dimension_group: vintage_pub {
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
    sql: ${TABLE}."VINTAGE_PUB_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
