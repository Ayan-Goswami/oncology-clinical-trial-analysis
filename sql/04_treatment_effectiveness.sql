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

/*
===============================================================================
Question:
How do treatment responses differ across treatment arms?

Purpose:
Compares response patterns between therapies.
===============================================================================
*/

SELECT
    treatment_arm,
    best_response,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY treatment_arm, best_response
ORDER BY treatment_arm, patient_count DESC;

/*
===============================================================================
Question:
Which treatment achieved the greatest average tumor size reduction?

Purpose:
Ranks treatments according to average percentage tumor reduction.
===============================================================================
*/

SELECT
    treatment_arm,
    ROUND(AVG(tumor_size_change_pct),2) AS avg_tumor_change
FROM oncology_clinical_trials
GROUP BY treatment_arm
ORDER BY avg_tumor_change ASC;

/*
===============================================================================
Question:
How many treatment cycles were completed on average for each therapy?

Purpose:
Evaluates treatment exposure across treatment arms.
===============================================================================
*/

SELECT
    treatment_arm,
    ROUND(AVG(treatment_cycles),2) AS average_cycles
FROM oncology_clinical_trials
GROUP BY treatment_arm
ORDER BY average_cycles DESC;
