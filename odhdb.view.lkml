view: odhdb {
  sql_table_name: public.odhdb ;;

  dimension: address_validation_status {
    type: string
    sql: ${TABLE}.address_validation_status ;;
  }

  dimension_group: arch {
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
    sql: ${TABLE}.arch_date ;;
  }

  dimension: arch_time {
    type: number
    sql: ${TABLE}.arch_time ;;
  }

  dimension_group: banking {
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
    sql: ${TABLE}.banking_date ;;
  }

  dimension: bch_num {
    type: number
    sql: ${TABLE}.bch_num ;;
  }

  dimension: cancel_code {
    type: string
    sql: ${TABLE}.cancel_code ;;
  }

  dimension: comment_1 {
    type: string
    sql: ${TABLE}.comment_1 ;;
  }

  dimension: comment_2 {
    type: string
    sql: ${TABLE}.comment_2 ;;
  }

  dimension: comment_3 {
    type: string
    sql: ${TABLE}.comment_3 ;;
  }

  dimension: comment_4 {
    type: string
    sql: ${TABLE}.comment_4 ;;
  }

  dimension: comment_5 {
    type: string
    sql: ${TABLE}.comment_5 ;;
  }

  dimension: comment_6 {
    type: string
    sql: ${TABLE}.comment_6 ;;
  }

  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: custom_data {
    type: string
    sql: ${TABLE}.custom_data ;;
  }

  dimension_group: delete {
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
    sql: ${TABLE}.delete_date ;;
  }

  dimension: delete_init {
    type: string
    sql: ${TABLE}.delete_init ;;
  }

  dimension: discount_on {
    type: number
    sql: ${TABLE}.discount_on ;;
  }

  dimension: dist_id {
    type: number
    sql: ${TABLE}.dist_id ;;
  }

  dimension: distributor_status {
    type: string
    sql: ${TABLE}.distributor_status ;;
  }

  dimension: document_id {
    type: number
    sql: ${TABLE}.document_id ;;
  }

  dimension_group: dw_upload_dt {
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
    sql: ${TABLE}.dw_upload_dt ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: end_pv_date {
    type: number
    sql: ${TABLE}.end_pv_date ;;
  }

  dimension_group: entry {
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
    sql: ${TABLE}.entry_date ;;
  }

  dimension: entry_init {
    type: string
    sql: ${TABLE}.entry_init ;;
  }

  dimension: entry_time {
    type: number
    sql: ${TABLE}.entry_time ;;
  }

  dimension: flag_14 {
    type: string
    sql: ${TABLE}.flag_14 ;;
  }

  dimension: flag_7 {
    type: string
    sql: ${TABLE}.flag_7 ;;
  }

  dimension: flag_8 {
    type: string
    sql: ${TABLE}.flag_8 ;;
  }

  dimension: freight_amount {
    type: number
    sql: ${TABLE}.freight_amount ;;
  }

  dimension: hold_recalcs_f {
    type: string
    sql: ${TABLE}.hold_recalcs_f ;;
  }

  dimension: initial_order_flg_f {
    type: string
    sql: ${TABLE}.initial_order_flg_f ;;
  }

  dimension: invoice_number {
    type: number
    sql: ${TABLE}.invoice_number ;;
  }

  dimension_group: invoice_print {
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
    sql: ${TABLE}.invoice_print_date ;;
  }

  dimension: invoice_print_init {
    type: string
    sql: ${TABLE}.invoice_print_init ;;
  }

  dimension: invoice_print_time {
    type: number
    sql: ${TABLE}.invoice_print_time ;;
  }

  dimension: misc_charge_1 {
    type: number
    sql: ${TABLE}.misc_charge_1 ;;
  }

  dimension: order_date_changed {
    type: string
    sql: ${TABLE}.order_date_changed ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_source {
    type: number
    sql: ${TABLE}.order_source ;;
  }

  dimension: pickup_center {
    type: number
    sql: ${TABLE}.pickup_center ;;
  }

  dimension_group: post {
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
    sql: ${TABLE}.post_date ;;
  }

  dimension: post_init {
    type: string
    sql: ${TABLE}.post_init ;;
  }

  dimension: post_status {
    type: number
    sql: ${TABLE}.post_status ;;
  }

  dimension: post_time {
    type: number
    sql: ${TABLE}.post_time ;;
  }

  dimension: price_1 {
    type: number
    sql: ${TABLE}.price_1 ;;
  }

  dimension: price_2 {
    type: number
    sql: ${TABLE}.price_2 ;;
  }

  dimension: price_3 {
    type: number
    sql: ${TABLE}.price_3 ;;
  }

  dimension: price_4 {
    type: number
    sql: ${TABLE}.price_4 ;;
  }

  dimension: price_5 {
    type: number
    sql: ${TABLE}.price_5 ;;
  }

  dimension: price_6 {
    type: number
    sql: ${TABLE}.price_6 ;;
  }

  dimension: price_7 {
    type: number
    sql: ${TABLE}.price_7 ;;
  }

  dimension: price_8 {
    type: number
    sql: ${TABLE}.price_8 ;;
  }

  dimension: price_9 {
    type: number
    sql: ${TABLE}.price_9 ;;
  }

  dimension: price_lvl {
    type: number
    sql: ${TABLE}.price_lvl ;;
  }
  ##IPS##
  dimension: ips {
    type: number
    sql: ${price_1}-${price_8}-${price_9} ;;
  }

  dimension: primary_ship_number {
    type: number
    sql: ${TABLE}.primary_ship_number ;;
  }

  dimension: print_status {
    type: string
    sql: ${TABLE}.print_status ;;
  }

  dimension: promo_recalced_f {
    type: string
    sql: ${TABLE}.promo_recalced_f ;;
  }

  dimension: pv_date {
    type: number
    sql: ${TABLE}.pv_date ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}.record_date ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}.released_date ;;
  }

  dimension: released_init {
    type: string
    sql: ${TABLE}.released_init ;;
  }

  dimension: released_time {
    type: number
    sql: ${TABLE}.released_time ;;
  }

  dimension: retail_f {
    type: string
    sql: ${TABLE}.retail_f ;;
  }

  dimension: rma_order_number {
    type: number
    sql: ${TABLE}.rma_order_number ;;
  }

  dimension: sales_tax {
    type: number
    sql: ${TABLE}.sales_tax ;;
  }

  dimension: ship_state {
    type: string
    sql: ${TABLE}.ship_state ;;
  }

  dimension: ship_to_addr_1 {
    type: string
    sql: ${TABLE}.ship_to_addr_1 ;;
  }

  dimension: ship_to_addr_2 {
    type: string
    sql: ${TABLE}.ship_to_addr_2 ;;
  }

  dimension: ship_to_addr_3 {
    type: string
    sql: ${TABLE}.ship_to_addr_3 ;;
  }

  dimension: ship_to_city {
    type: string
    sql: ${TABLE}.ship_to_city ;;
  }

  dimension: ship_to_country {
    type: string
    sql: ${TABLE}.ship_to_country ;;
  }

  dimension: ship_to_mod_flag {
    type: string
    sql: ${TABLE}.ship_to_mod_flag ;;
  }

  dimension: ship_to_name {
    type: string
    sql: ${TABLE}.ship_to_name ;;
  }

  dimension: ship_to_phone {
    type: string
    sql: ${TABLE}.ship_to_phone ;;
  }

  dimension: ship_to_save_f {
    type: string
    sql: ${TABLE}.ship_to_save_f ;;
  }

  dimension: ship_to_seq {
    type: string
    sql: ${TABLE}.ship_to_seq ;;
  }

  dimension: ship_to_zip {
    type: string
    sql: ${TABLE}.ship_to_zip ;;
  }

  dimension: ship_via_code {
    type: number
    sql: ${TABLE}.ship_via_code ;;
  }

  dimension: ship_via_desc {
    type: string
    sql: ${TABLE}.ship_via_desc ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension_group: tax_calculation {
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
    sql: ${TABLE}.tax_calculation_date ;;
  }

  dimension: tax_changed {
    type: string
    sql: ${TABLE}.tax_changed ;;
  }

  dimension: tax_exempt_num {
    type: string
    sql: ${TABLE}.tax_exempt_num ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: tax_status {
    type: string
    sql: ${TABLE}.tax_status ;;
  }

  dimension: taxable_amount {
    type: number
    sql: ${TABLE}.taxable_amount ;;
  }

  dimension: tot_invce_amount {
    type: number
    sql: ${TABLE}.tot_invce_amount ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: verify {
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
    sql: ${TABLE}.verify_date ;;
  }

  dimension: verify_init {
    type: string
    sql: ${TABLE}.verify_init ;;
  }

  dimension: verify_time {
    type: number
    sql: ${TABLE}.verify_time ;;
  }

  dimension: warehouse {
    type: number
    sql: ${TABLE}.warehouse ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_to_name]
  }
  ##Total IPS##
  measure: total_ips {
    type: sum
    value_format_name: usd
    sql: ${ips} ;;
  }

}
