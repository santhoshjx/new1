
  create view `Sample11`.`Student_students__dbt_tmp` as (
    with sample_store as (
select * from`student`.`students`
),
final as(
    select * from sample_store
)
select * from final
  );
