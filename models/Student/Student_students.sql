with sample_store as (
select * from{{ source('Student', 'students') }}
),
final as(
    select * from sample_store
)
select * from final