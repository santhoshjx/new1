
with dbt__CTE__INTERNAL_test as (
select * from `Sample11`.`Student_students` group by id having count(*)>1
)select count(*) from dbt__CTE__INTERNAL_test