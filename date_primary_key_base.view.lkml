view: date_primary_key_base {
  extension: required

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    sql: CONCAT(TO_CHAR(${_date}), '-', ${key_base}) ;;
  }
}
