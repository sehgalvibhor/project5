{{ config(materialized='table') }}

SELECT
country_region_code,		
country_region,		
sub_region_1,		
SPLIT(sub_region_1_code,
    '-')[OFFSET(1)] sub_region_1_code,		
sub_region_2,		
sub_region_2_code,		
place_id,		
date,		
symptom,		
value
FROM {{ ref('symptoms_unpivot') }}

