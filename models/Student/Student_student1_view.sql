{{ config(materialized='view') }}

with source_data as (

    select * from{{ source('Student', 'students1') }}


)

select *
from source_data