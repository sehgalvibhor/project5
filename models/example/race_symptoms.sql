{{ config(materialized='table') }}

SELECT location, state, cases.date AS date, race, cases.value AS cases, country_region_code, country_region,
sub_region_1_code AS state_id, sub_region_2 AS county,
place_id, symptom, symptoms.value AS symptom_weight
FROM {{ ref('cases_unpivot') }} cases LEFT OUTER JOIN  {{ ref('symptoms_unpivot_cleaned') }} symptoms
ON cases.state = sub_region_1_code
AND cases.location = symptoms.sub_region_2
AND cases.date = symptoms.date;