

with source_data as (

    select *
    union all
    select null as id

)

select *
from source_data