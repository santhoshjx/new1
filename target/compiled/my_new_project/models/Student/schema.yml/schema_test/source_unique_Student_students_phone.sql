
    
    



select count(*) as validation_errors
from (

    select
        phone

    from `student`.`students`
    where phone is not null
    group by phone
    having count(*) > 1

) validation_errors


