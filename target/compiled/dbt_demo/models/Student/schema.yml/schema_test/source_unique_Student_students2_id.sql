
    
    



select count(*) as validation_errors
from (

    select
        id

    from `student`.`students2`
    where id is not null
    group by id
    having count(*) > 1

) validation_errors


