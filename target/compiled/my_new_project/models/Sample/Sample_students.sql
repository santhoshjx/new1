with sample_store as (
select * from `Sample`.`students`
),
final as(
    select * from sample_store
)
select * from final