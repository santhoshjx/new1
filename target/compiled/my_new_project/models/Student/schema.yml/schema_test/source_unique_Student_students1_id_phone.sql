
    
    



select count(*) as validation_errors
from (

    select
        id , phone

    from `student`.`students1`
    where id , phone is not null
    group by id , phone
    having count(*) > 1

) validation_errors


