{{ config(materialized='table') }}

SELECT *
FROM (SELECT month, state, county, race, sym_weight, RANK() OVER(PARTITION BY month, state, county,race ORDER BY sym_weight DESC) AS rank
FROM {{ ref('cases_us') }}cases
ORDER BY rank) AS sub
WHERE rank < 4