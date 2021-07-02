

with validation as (

    select
        id as dup

    from `sample1`.`students`

),

validation_errors as (

    select
       dup

    from validation
    -- if this is true, then even_field is actually odd!
    group by dup having count(*)>1
    #where (even_field % 2) = 1

)

select count(*)
from validation_errors

