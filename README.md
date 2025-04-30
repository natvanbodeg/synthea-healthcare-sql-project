This project contains SQL queries applied to a synthetic healthcare dataset (modified Synthea data) using PostgreSQL. The goal is to practice and demonstrate SQL skills in healthcare data analytics by querying patient information, conditions, and other healthcare-related data.

Project Description
In this project, I wrote SQL queries to analyze and retrieve data from a synthetic healthcare database. The queries focus on healthcare encounters, patient information, conditions, immunizations, and more. The dataset used is the synthetic Synthea healthcare data, which is often used for practice and educational purposes.

SQL Queries
The queries included in this project are:

Retrieve all encounters that are outpatient or ambulatory: This helps analyze routine or less critical patient visits.

Count how many times each condition appears (excluding certain BMI-related conditions): Useful for identifying common conditions in the dataset.

Retrieve patient data specifically for those living in Boston: This query helps filter data based on location (Boston in this case).

Filter for patients diagnosed with kidney disease using specific codes: Identifies patients with chronic kidney conditions using ICD codes.

Count patients by city (excluding Boston), only showing cities with at least 100 patients: This query helps analyze the distribution of patients across different cities.

Join immunization records with patient details: Combines immunization data with patient demographic information for analysis.


Project Files
postgres_healthcare_project_queries.sql: Contains the SQL queries for analyzing the healthcare dataset.
