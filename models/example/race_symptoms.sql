{{ config(materialized='view') }}

SELECT state, sub_region_2 AS county, case_month AS month , race, race_cases, symptom, sym_weight  FROM
(SELECT state, location, race, AVG(value) race_cases, SUBSTRING(CAST(date AS string), 0, 7) case_month
FROM {{ ref('cases_unpivot') }} cases
WHERE value > 0
GROUP BY case_month, state, location, race) AS temp1
INNER JOIN
(SELECT sub_region_1_code, sub_region_2, symptom, AVG(value) sym_weight, SUBSTRING(CAST(date AS string), 0, 7) sym_month
FROM {{ ref('symptoms_unpivot_cleaned') }} symptoms
WHERE value > 0
GROUP BY sym_month, sub_region_1_code, sub_region_2, symptom) AS temp2
ON sym_month = case_month
AND temp2.sub_region_2 = temp1.location
AND temp2.sub_region_1_code = temp1.state