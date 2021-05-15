{{
    config(
        materialized='incremental',
    )
}}

SELECT *
FROM `bigquery-public-data.covid19_tracking.city_level_cases_and_deaths`
WHERE city_or_county = 'County'

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where date <= (SELECT CURRENT_DATE AS today)

{% endif %}
