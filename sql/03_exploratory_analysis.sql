/*
===============================================================================
Project : Oncology Clinical Trial Analysis
Author  : Ayan Goswami
File    : 03_exploratory_analysis.sql

Description:
This script explores patient demographics, disease characteristics,
and treatment distribution in the oncology clinical trial dataset.

===============================================================================
*/
/*
===============================================================================
Question:
What is the gender distribution of patients enrolled in the clinical trial?

Purpose:
Understanding demographic distribution helps determine whether the
study population is balanced across sexes.
===============================================================================
*/

SELECT
    sex,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY sex
ORDER BY patient_count DESC;

/*
===============================================================================
Question:
What is the overall age distribution of enrolled patients?

Purpose:
Provides an overview of the study population by calculating
minimum, maximum and average age.
===============================================================================
*/

SELECT
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    ROUND(AVG(age),2) AS average_age
FROM oncology_clinical_trials;

/*
===============================================================================
Question:
How does average age differ between male and female patients?

Purpose:
Compares age demographics across sexes.
===============================================================================
*/

SELECT
    sex,
    ROUND(AVG(age),2) AS average_age
FROM oncology_clinical_trials
GROUP BY sex;

/*
===============================================================================
Question:
How are patients distributed across different age groups?

Purpose:
Categorizes patients into clinically meaningful age ranges.
===============================================================================
*/

SELECT

CASE

WHEN age < 40 THEN 'Under 40'

WHEN age BETWEEN 40 AND 49 THEN '40-49'

WHEN age BETWEEN 50 AND 59 THEN '50-59'

WHEN age BETWEEN 60 AND 69 THEN '60-69'

ELSE '70+'

END AS age_group,

COUNT(*) AS patient_count

FROM oncology_clinical_trials

GROUP BY age_group

ORDER BY age_group;

/*
===============================================================================
Question:
Which cancer types are most represented in the clinical trial?

Purpose:
Identifies the distribution of patients across different cancer types.
===============================================================================
*/

SELECT

cancer_type,

COUNT(*) AS patient_count

FROM oncology_clinical_trials

GROUP BY cancer_type

ORDER BY patient_count DESC;

/*
===============================================================================
Question:
How are cancer stages distributed within each cancer type?

Purpose:
Provides a detailed breakdown of disease stage across cancer types.
===============================================================================
*/

SELECT

cancer_type,

stage,

COUNT(*) AS patient_count

FROM oncology_clinical_trials

GROUP BY cancer_type, stage

ORDER BY cancer_type, stage;
