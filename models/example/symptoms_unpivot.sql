{{ config(materialized='table') }}

select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Pain' symptom , symptom_Pain value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Infection' symptom, symptom_Infection value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Allergy' symptom, symptom_Allergy value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Common_cold' symptom, symptom_Common_cold value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Diabetes' symptom, symptom_Diabetes value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Itch' symptom, symptom_Itch value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Skin_rash' symptom, symptom_Skin_rash value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Anxiety' symptom, symptom_Anxiety value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Acne' symptom, symptom_Acne value
from {{ ref('symptoms_us') }}
union all
select sub_region_1, date, sub_region_1_code, place_id, 'symptom_Hypertension' symptom, symptom_Hypertension value
from {{ ref('symptoms_us') }}
