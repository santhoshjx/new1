{%macro insert_audits(action_name) -%}
insert into Student.audit(status_)
values('{{action_name}}');
commit;
{%- endmacro %}