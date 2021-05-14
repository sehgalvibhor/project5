{{ config(materialized='table') }}

select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Pain' symptom , symptom_Pain value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Infection' symptom, symptom_Infection value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Allergy' symptom, symptom_Allergy value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Common_cold' symptom, symptom_Common_cold value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Diabetes' symptom, symptom_Diabetes value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Itch' symptom, symptom_Itch value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Skin_rash' symptom, symptom_Skin_rash value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Anxiety' symptom, symptom_Anxiety value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Acne' symptom, symptom_Acne value
from {{ ref('symptoms_us') }}
union all
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'symptom_Hypertension' symptom, symptom_Hypertension value
from {{ ref('symptoms_us') }}
