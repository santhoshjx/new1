

with validation as (

    select
        phone as dup

    from `student`.`students`

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

