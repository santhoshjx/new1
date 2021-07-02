{{ config(materialized='table') }}

with source_data as (

    select * from{{ source('Student', 'students1') }}


)

select *
from source_data
