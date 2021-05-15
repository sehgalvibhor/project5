{{ config(materialized='table') }}

SELECT *
FROM (SELECT month, state, county, race, symptom, RANK() OVER(PARTITION BY month, state, county,race ORDER BY sym_weight DESC) AS rank
FROM {{ ref('race_symptoms') }}
ORDER BY rank) AS sub
WHERE rank < 4