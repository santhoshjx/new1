
    
    



select count(*) as validation_errors
from (

    select
        phone

    from `student`.`students1`
    where phone is not null
    group by phone
    having count(*) > 1

) validation_errors


