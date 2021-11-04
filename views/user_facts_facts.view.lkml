# If necessary, uncomment the line below to include explore_source.
# include: "l_ecommerce.model.lkml"

view: user_facts_facts {
  derived_table: {
    indexes: ["count"]
    persist_for: "20 hours"

    sql: SELECT city, count as humans
      FROM ${user_facts.SQL_TABLE_NAME}
      ;;
  }


  dimension: humans {
    type: number
  }
  dimension: city {}
}
