{{ config(materialized='table') }}

SELECT * FROM `bigquery-public-data.covid19_tracking.city_level_cases_and_deaths`
WHERE city_or_county = 'County';