/*
===============================================================================
Project : Oncology Clinical Trial Analysis
Author  : Ayan Goswami
File    : 05_survival_analysis.sql

Description:
This script analyzes survival outcomes in the oncology clinical trial dataset.
The analysis evaluates Progression-Free Survival (PFS) and Overall Survival
(OS) across cancer types, disease stages, patient characteristics, treatment
response, and trial completion status.

===============================================================================
*/

/*
===============================================================================
Question:
What are the overall PFS and OS statistics for the study population?

Purpose:
Provides a baseline summary of progression-free survival and overall survival
before comparing outcomes across clinical and demographic groups.
===============================================================================
*/

SELECT
    MIN(pfs_weeks) AS minimum_pfs_weeks,
    MAX(pfs_weeks) AS maximum_pfs_weeks,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,

    MIN(os_weeks) AS minimum_os_weeks,
    MAX(os_weeks) AS maximum_os_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks

FROM oncology_clinical_trials;

-- 2. Average Survival by Cancer Type

SELECT
    cancer_type,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY cancer_type
ORDER BY average_os_weeks DESC;

-- 3. Average Survival by Cancer Stage

SELECT
    stage,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY stage
ORDER BY stage;

-- 4. Average Survival by Treatment Arm

SELECT
    treatment_arm,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY treatment_arm
ORDER BY average_os_weeks DESC;

-- 5. Average Survival by ECOG Performance Score

SELECT
    ecog_score,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY ecog_score
ORDER BY ecog_score;

-- 6. Average Survival by Age Group

SELECT
    CASE
        WHEN age < 40 THEN 'Under 40'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        WHEN age BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS age_group,

    COUNT(*) AS patient_count,

    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks

FROM oncology_clinical_trials

GROUP BY age_group

ORDER BY
    CASE
        WHEN age_group = 'Under 40' THEN 1
        WHEN age_group = '40-49' THEN 2
        WHEN age_group = '50-59' THEN 3
        WHEN age_group = '60-69' THEN 4
        ELSE 5
    END;

-- 7. Average Survival by Smoking History

SELECT
    smoking_history,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY smoking_history
ORDER BY average_os_weeks DESC;

-- 8. Average Survival by Trial Completion Status

SELECT
    trial_completed,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY trial_completed
ORDER BY average_os_weeks DESC;

-- 9. Average Survival by Maximum Adverse Event Grade

SELECT
    max_adverse_event_grade,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks
FROM oncology_clinical_trials
GROUP BY max_adverse_event_grade
ORDER BY max_adverse_event_grade;

-- 10. Survival Gap Analysis by Cancer Stage

SELECT
    stage,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs_weeks,
    ROUND(AVG(os_weeks), 2) AS average_os_weeks,
    ROUND(AVG(os_weeks) - AVG(pfs_weeks), 2) AS survival_gap_weeks
FROM oncology_clinical_trials
GROUP BY stage
ORDER BY stage;
