{{ config(materialized='view') }}

select location,state,date, 'cases_white' race, cases_white value
from {{ ref('cases_us') }}
union all
select location,state,date, 'cases_black' race, cases_black value
from {{ ref('cases_us') }}
union all
select location,state,date, 'cases_latinx' race, cases_latinx value
from {{ ref('cases_us') }}
union all
select location,state,date, 'cases_asian' race, cases_asian value
from {{ ref('cases_us') }}
union all
select location,state,date, 'cases_ethnicity_hispanic' race, cases_ethnicity_hispanic value
from {{ ref('cases_us') }}
union all
select location,state,date, 'cases_ethnicity_nonhispanic' race, cases_ethnicity_nonhispanic value
from {{ ref('cases_us') }}
union all
select location,state,date, 'deaths_total' race, deaths_total value
from {{ ref('cases_us') }}