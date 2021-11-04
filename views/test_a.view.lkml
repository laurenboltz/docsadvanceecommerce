# If necessary, uncomment the line below to include explore_source.
# include: "l_ecommerce.model.lkml"

view: test_a {
  derived_table: {
    explore_source: orders {
      column: count {}
      column: id { field: users.id }
    }
  }
  dimension: count {
    type: number
  }
  dimension: id {
    type: number
  }
}
