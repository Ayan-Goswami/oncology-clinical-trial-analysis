/*
===============================================================================
Project : Oncology Clinical Trial Analysis
Author  : Ayan Goswami
File    : 04_treatment_effectiveness.sql

Description:
This script evaluates treatment effectiveness using clinical trial outcomes,
including response rates, tumor size reduction, treatment exposure,
and survival metrics.

===============================================================================
*/

/*
===============================================================================
Question:
How many patients were assigned to each treatment arm?

Purpose:
Determines the sample size of each treatment group before comparing
clinical outcomes.
===============================================================================
*/

SELECT
    treatment_arm,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY treatment_arm
ORDER BY patient_count DESC;

/*
===============================================================================
Question:
What are the overall treatment response outcomes?

Purpose:
Summarizes the frequency of each clinical response category.
===============================================================================
*/

SELECT
    best_response,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY best_response
ORDER BY patient_count DESC;
