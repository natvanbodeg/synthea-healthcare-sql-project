/*
Retrieve all encounters that are either outpatient or ambulatory
Focuses on less critical, more routine patient visits
*/

select *
from public.encounters
where encounterclass in ('outpatient','ambulatory')



/*
Count how many times each condition appears, excluding a common BMI-related condition
Helps identify prevalent diagnoses in the dataset
*/

select description,
	   count(*) as count_of_cond
from public.conditions
where description != 'Body Mass Index 30.0-30.9, adult'
group by description
having count(*) > 2000
order by count(*) desc



/*
Retrieve patient data specifically for those living in Boston
Used for regional analysis / filtering by location
*/

select * 
from public.patients
where city = 'Boston'



/*
Filter for patients diagnosed with kidney disease codes
Helps to isolate patients with chronic kidney conditions
*/

select *
from public.conditions
where code in ('585.1', '585.2', '585.3', '585.4')



/*
Counts patients by city (excluding Boston), only showing cities with at least 100 patients
Helps to understand geographic distribution of patient data
*/

select city, count(*)
from public.patients
where city != 'Boston'
group by city
having count(*) >= 100
order by count(*) desc



/*
Join immunization records with patient details to show who received what and when
Useful for analyzing immunization patterns alongside patient demographics
*/

select t1.*,
	   t2.first,
	   t2.last,
	   t2.birthdate
from public.immunizations as t1
left join public.patients as t2
on t1.patient = t2.id