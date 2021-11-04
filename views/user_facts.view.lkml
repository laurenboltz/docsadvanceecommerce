# If necessary, uncomment the line below to include explore_source.
# include: "l_ecommerce.model.lkml"

view: user_facts {
  derived_table: {
    explore_source: users {
      column: count {}
      column: city {}
    }
  }
  dimension: count {
    type: number
  }
  dimension: city {}
}
