

with validation as (

    select
        id as dup

    from `student`.`students2`

),

validation_errors as (

    select
       dup

    from validation
    -- if this is true, then even_field is actually odd!
    group by dup having count(*)>1

)

select count(*)
from validation_errors

