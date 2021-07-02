
    
    



select count(*) as validation_errors
from (

    select
        phone

    from `sample1`.`students1`
    where phone is not null
    group by phone
    having count(*) > 1

) validation_errors


