{{ config(materialized='table') }}

SELECT map.state, map.county, month, race, first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, never, rarely, sometimes, frequently, always
FROM {{ ref('top_covid_symptoms_by_race') }} covid, {{ ref('county_code_mapping') }} map,
`bigquery-public-data.covid19_nyt.mask_use_by_county` masks
WHERE covid.county = map.county
AND map.county_code = masks.county_fips_code