view: ad_metrics_weighted_period_comparison_base {
  extension: required

  measure: weighted_total_impressions {
    hidden: yes
    type:  sum
    sql:  ${impressions} / NULLIF(${total.impressions}, 0) ;;
  }
  measure: weighted_average_click_rate_period_percent_change {
    hidden: yes
    type: number
    sql: ${average_click_rate_period_percent_change} * ${weighted_total_impressions} ;;
    group_label: "Period Comparisons"
    value_format_name: percent_1
  }
  measure: average_click_rate_period_percent_change_abs {
    sql: abs(${weighted_average_click_rate_period_percent_change}) ;;
  }
  measure: weighted_total_clicks {
    hidden: yes
    type:  sum
    sql:  ${clicks} / NULLIF(${total.clicks}, 0) ;;
  }
  measure: weighted_average_conversion_rate_period_percent_change {
    hidden: yes
    type: number
    sql: ${average_conversion_rate_period_percent_change} * ${weighted_total_clicks} ;;
    group_label: "Period Comparisons"
    value_format_name: percent_1
  }
  measure: average_conversion_rate_period_percent_change_abs {
    sql: abs(${weighted_average_conversion_rate_period_percent_change}) ;;
  }
  measure: weighted_average_cost_per_click_period_percent_change {
    hidden: yes
    type: number
    sql: ${average_cost_per_click_period_percent_change} * ${weighted_total_clicks} ;;
    group_label: "Period Comparisons"
    value_format_name: percent_1
  }
  measure: average_cost_per_click_period_percent_change_abs {
    sql: abs(${weighted_average_cost_per_click_period_percent_change}) ;;
  }
  measure: weighted_total_cost {
    hidden: yes
    type:  sum
    sql:  ${cost} / NULLIF(${total.cost}, 0) ;;
  }
  measure: weighted_average_value_per_cost_period_percent_change {
    hidden: yes
    type: number
    sql: ${average_value_per_cost_period_percent_change} * ${weighted_total_cost} ;;
    group_label: "Period Comparisons"
    value_format_name: percent_1
  }
  measure: average_value_per_cost_percent_change_abs {
    sql: abs(${weighted_average_value_per_cost_period_percent_change}) ;;
  }
  measure: weighted_total_conversions {
    hidden: yes
    type:  sum
    sql:  ${conversions} / NULLIF(${total.conversions}, 0) ;;
  }
  measure: weighted_average_cost_per_conversion_period_percent_change {
    hidden: yes
    type: number
    sql: ${average_cost_per_conversion_period_percent_change} * ${weighted_total_conversions} ;;
    group_label: "Period Comparisons"
    value_format_name: percent_1
  }
  measure: average_cost_per_conversion_period_percent_change_abs {
    sql: abs(${weighted_average_cost_per_conversion_period_percent_change}) ;;
  }
  measure: weighted_total_conversionvalue {
    hidden: yes
    type:  sum
    sql:  ${conversionvalue} / NULLIF(${total.conversionvalue},0) ;;
  }
}
