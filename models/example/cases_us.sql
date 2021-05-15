{{
    config(
        materialized='incremental',
    )
}}

SELECT *
FROM {{ source('cov_track', 'city_level_cases_and_deaths') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where date <= (SELECT CURRENT_DATE AS today)

{% endif %}

AND city_or_county = 'County'