/* looking for missing +1 */
SELECT left_side.id + 1 AS Start_value
FROM the_table_name AS left_side
  LEFT OUTER JOIN the_table_name AS right_side
    ON left_side.id + 1 = right_side.id
WHERE right_side.id IS NULL;
