{{ config(materialized='table') }}

SELECT max(sub_region_2_code) AS county_code, sub_region_1 AS state, sub_region_2 AS county
FROM {{ ref('symptoms_unpivot_cleaned') }}
GROUP BY sub_region_1, sub_region_2;