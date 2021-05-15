{{ config(materialized='table') }}

SELECT * from  {{ ref('top_race_symptoms') }}
pivot ( 
  sum(rank) for symptom in ('symptom_Pain' symptom_Pain, 
'symptom_Infection' symptom_Infection, 
'symptom_Allergy' symptom_Allergy, 
'symptom_Acne' symptom_Acne, 
'symptom_Anxiety' symptom_Anxiety, 
'symptom_Diabetes' symptom_Diabetes, 
'symptom_Itch' symptom_Itch, 
'symptom_Skin_rash' symptom_Skin_rash, 
'symptom_Common_cold' symptom_Common_cold, 
'symptom_Hypertension' symptom_Hypertension)
)