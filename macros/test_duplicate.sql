{% macro test_duplicate(model, column_name) %}

with validation as (

    select
        {{ column_name }} as dup

    from {{ model }}

),

validation_errors as (

    select
       dup

    from validation
    -- if this is true, then even_field is actually odd!
    group by dup having count(*)>1

)

select count(*)
from validation_errors

{% endmacro %}