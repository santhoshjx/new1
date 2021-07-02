with sample_store as (
select * from{{ source('Student', 'students3') }}
),
final as(
    select * from sample_store
)
select * from final