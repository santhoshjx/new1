
  create view `student`.`Sample_students__dbt_tmp` as (
    with sample_store as (
select * from `Sample`.`students`
),
final as(
    select * from sample_store
)
select * from final
  );
