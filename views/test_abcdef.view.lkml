# If necessary, uncomment the line below to include explore_source.
# include: "l_ecommerce.model.lkml"

view: test_abcdef {
  derived_table: {
    indexes: ["count"]
    persist_for: "20 hours"

    sql: SELECT *
      FROM ${test_a.SQL_TABLE_NAME}
        UNION ${test_b.SQL_TABLE_NAME}
        UNION ${test_c.SQL_TABLE_NAME}
        UNION ${test_d.SQL_TABLE_NAME}
        UNION ${test_e.SQL_TABLE_NAME}
        UNION ${test_f.SQL_TABLE_NAME}
      ;;
  }


  dimension: count {
    type: number
  }
  dimension: id {
    type: number
  }
}
