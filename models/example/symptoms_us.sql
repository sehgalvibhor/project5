{{ config(materialized='table') }}
select *
from {{ source('cov_sym', 'symptom_search_sub_region_2_weekly') }}
WHERE country_region_code = 'US'
