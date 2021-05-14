{{ config(materialized='table') }}
select *
from `bigquery-public-data.covid19_symptom_search.symptom_search_sub_region_2_weekly`
WHERE country_region_code = 'US'
