
          insert into `sample11`.`check_snapshot` (`id`, `name`, `dept`, `phone`, `email`, `teacher_id`, `updated_date`, `dbt_updated_at`, `dbt_valid_from`, `dbt_valid_to`, `dbt_scd_id`)
    select DBT_INTERNAL_SOURCE.`id`,DBT_INTERNAL_SOURCE.`name`,DBT_INTERNAL_SOURCE.`dept`,DBT_INTERNAL_SOURCE.`phone`,DBT_INTERNAL_SOURCE.`email`,DBT_INTERNAL_SOURCE.`teacher_id`,DBT_INTERNAL_SOURCE.`updated_date`,DBT_INTERNAL_SOURCE.`dbt_updated_at`,DBT_INTERNAL_SOURCE.`dbt_valid_from`,DBT_INTERNAL_SOURCE.`dbt_valid_to`,DBT_INTERNAL_SOURCE.`dbt_scd_id`
    from `sample11`.`check_snapshot__dbt_tmp` as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type = 'insert'

      