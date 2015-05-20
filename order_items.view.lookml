- view: order_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: inventory_item_id
    type: int
    # hidden: true
    sql: ${TABLE}.inventory_item_id

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension_group: returned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.returned_at

  - measure: sale_price
    type: sum
    sql: ${TABLE}.sale_price

  - measure: count
    type: count
    drill_fields: [id, inventory_items.id, orders.id]

  