

  create  table
    `Sample11`.`Student_students1__dbt_tmp`
  as (
    

with source_data as (

    select * from`student`.`students1`


)

select *
from source_data
  )
