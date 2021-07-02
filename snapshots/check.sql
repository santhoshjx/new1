{% snapshot check_snapshot %}

{{
    config(

      target_schema='sample11',
      strategy='timestamp',
      unique_key='id',
      updated_at='updated_date'

    )
}}

select * from {{ ref('Student_students') }}

{% endsnapshot %}