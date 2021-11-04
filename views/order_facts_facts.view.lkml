view: order_facts_facts {
  derived_table: {
    indexes: ["count"]
    persist_for: "20 hours"

    sql: SELECT *
      FROM ${order_facts.SQL_TABLE_NAME}
      ;;
  }

  dimension: count {
    type: number
  }
  dimension: id {
    type: number
  }

}
