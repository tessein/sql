select left_side.id + 1 as start
from the_table_name as left_side
  left outer join the_table_name as right_side
    on left_side.id + 1 = right_side.id
where right_side.id is null;
