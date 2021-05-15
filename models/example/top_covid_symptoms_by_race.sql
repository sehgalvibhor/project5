
{{ config(materialized='table') }}

SELECT * from {{ ref('top_race_symptoms') }}
pivot ( 
  max(symptom) for rank in (1 first, 2 second,3 third, 4 fourth, 5 fifth, 6 sixth, 7 seventh, 8 eighth, 9 ninth, 10 tenth)
)