# If necessary, uncomment the line below to include explore_source.
# include: "l_ecommerce.model.lkml"

view: user_order_facts {
  derived_table: {
    indexes: ["count"]
    persist_for: "20 hours"

    sql: SELECT *
      FROM ${user_facts_facts.SQL_TABLE_NAME} LEFT JOIN ${order_facts_facts.SQL_TABLE_NAME} ON ${order_facts_facts.SQL_TABLE_NAME}.count = ${user_facts_facts.SQL_TABLE_NAME}.humans
      ;;
  }


  dimension: count {
    type: number
  }
  dimension: city {}

  dimension: id {
    type: number
  }
}
