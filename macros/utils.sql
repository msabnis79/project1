
{% macro test(x) %}

CASE 
WHEN DAYNAME(TO_TIMESTAMP(trim({{x}},'"'))) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END AS DAY_TYPE

{% endmacro %}