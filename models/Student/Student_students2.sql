with sample_store as (
select * from{{ source('Student', 'students2') }}
),
final as(
    select * from sample_store
)
select * from final