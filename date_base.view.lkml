view: date_base {
  extension: required

  dimension_group: date {
    group_label: "Event"
    label: ""
    type: time
    datatype: date
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year
    ]
    convert_tz: no
    sql: ${_date} ;;
  }

  dimension: date_week_date {
    group_label: "Event"
    label: "Week Date"
    hidden: yes
    type: date
    convert_tz: no
    sql: TO_DATE(${date_week}) ;;
#     expression: to_date(${date_week}) ;;
  }

  dimension: date_month_date {
    group_label: "Event"
    label: "Month Date"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATE_TRUNC('MONTH', ${date_date}) ;;
#     expression: trunc_months(${date_date});;
  }

  dimension: date_quarter_date {
    group_label: "Event"
    label: "Quarter Date"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATE_TRUNC('QUARTER', ${date_date}) ;;
#     expression: trunc_quarters(${date_date});;
  }

  dimension: date_year_date {
    group_label: "Event"
    label: "Year Date"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATE_TRUNC('YEAR', ${date_date}) ;;
#     expression: trunc_years(${date_date}) ;;
  }

  dimension: date_day_of_quarter {
    group_label: "Event"
    label: "Day of Quarter"
    hidden: yes
    type: number
    sql: DATEDIFF(day, ${date_date}, ${date_quarter_date})  ;;
#     expression: diff_days(${date_quarter_date}, ${date_date}) ;;
  }

  dimension: date_last_week {
    group_label: "Event"
    label: "Last Week"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(WEEK, -1, ${date_date}) ;;
#     expression: add_days(${date_date}, 7) ;;
  }

  dimension: date_last_month {
    group_label: "Event"
    label: "Last Month"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(MONTH, -1, ${date_date}) ;;
#     expression: add_months(${date_date}, 1) ;;
  }

  dimension: date_last_quarter {
    group_label: "Event"
    label: "Last Quarter"
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(QUARTER, -1, ${date_date}) ;;
#     expression: add_months(${date_date}, -3) ;;
  }

  dimension: date_next_week {
    hidden: yes
    type: date
    convert_tz: no
    sql:  DATEADD(WEEK, 1, ${date_date}) ;;
#     expression: add_days(${date_date}, 7) ;;
  }

  dimension: date_next_month {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(MONTH, 1, ${date_date}) ;;
#     expression: add_months(${date_date}, 1) ;;
  }

  dimension: date_next_quarter {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATE_ADD(QUARTER, 1, ${date_date}) ;;
#     expression: add_months(${date_date}, 3) ;;
  }

  dimension: date_next_year {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(YEAR, 1, ${date_date}) ;;
#     expression: add_years(${date_date}, 1) ;;
  }

  dimension: date_last_year {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(YEAR, -1, ${date_date}) ;;
#     expression: add_years(${date_date}, -1) ;;
  }

  dimension: date_days_prior {
    hidden: yes
    type: number
    sql: DATEDIFF(DAY, ${date_date}, CURRENT_DATE()) ;;
#     expression: diff_days(${date_date}, now()) ;;
  }

  dimension: date_day_of_7_days_prior {
    hidden: yes
    type: number
    sql: MOD(MOD(${date_days_prior}, 7) + 7, 7) ;;
#     expression: mod(mod(${date_days_prior}, 7) + 7, 7) ;;
  }

  dimension: date_day_of_28_days_prior {
    hidden: yes
    type: number
    sql: MOD(MOD(${date_days_prior}, 28) + 28, 28) ;;
#     expression: mod(mod(${date_days_prior}, 28) + 28, 28) ;;
  }

  dimension: date_day_of_91_days_prior {
    hidden: yes
    type: number
    sql: MOD(MOD(${date_days_prior}, 91) + 91, 91) ;;
#     expression: mod(mod(${date_days_prior}, 91) + 91, 91) ;;
  }

  dimension: date_day_of_364_days_prior {
    hidden: yes
    type: number
    sql: MOD(MOD(${date_days_prior}, 364) + 364, 364) ;;
#     expression: mod(mod(${date_days_prior}, 364) + 364, 364) ;;
  }

  dimension: date_date_7_days_prior {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(DAY, -${date_day_of_7_days_prior}, ${date_date}) ;;
#     expression: add_days(-1 * ${date_day_of_7_days_prior}, ${date_date}) ;;
  }

  dimension: date_date_28_days_prior {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(DAY, -${date_day_of_28_days_prior}, ${date_date}) ;;
#     expression: add_days(-1 * ${date_day_of_28_days_prior}, ${date_date}) ;;
  }

  dimension: date_date_91_days_prior {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(DAY, -${date_day_of_91_days_prior}, ${date_date}) ;;
#     expression: add_days(-1 * ${date_day_of_91_days_prior}, ${date_date}) ;;
  }

  dimension: date_date_364_days_prior {
    hidden: yes
    type: date
    convert_tz: no
    sql: DATEADD(DAY, -${date_day_of_364_days_prior}, ${date_date} ) ;;
#     expression: add_days(-1 * ${date_day_of_364_days_prior}, ${date_date}) ;;
  }

}
