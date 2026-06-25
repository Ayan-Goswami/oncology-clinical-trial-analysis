/*
===============================================================================
Project : Oncology Clinical Trial Analysis
Author  : Ayan Goswami
Purpose : Assess data quality before performing exploratory analysis.
===============================================================================
*/

Query 1 — Total Records

SELECT
    COUNT(*) AS total_records
FROM oncology_clinical_trials;

| total_records |
| ------------: |
|          5000 |


Query 2 — Duplicate Patient IDs

SELECT
    patient_id,
    COUNT(*) AS duplicate_count
FROM oncology_clinical_trials
GROUP BY patient_id
HAVING COUNT(*) > 1;

No rows returned

Query 3 — Missing Values

SELECT
    COUNT(*) AS total_records,

    COUNT(patient_id) AS patient_id,

    COUNT(cancer_type) AS cancer_type,

    COUNT(stage) AS stage,

    COUNT(treatment_arm) AS treatment_arm,

    COUNT(age) AS age,

    COUNT(sex) AS sex,

    COUNT(ecog_score) AS ecog_score,

    COUNT(smoking_history) AS smoking_history,

    COUNT(comorbidity_count) AS comorbidity_count,

    COUNT(treatment_cycles) AS treatment_cycles,

    COUNT(best_response) AS best_response,

    COUNT(tumor_size_change_pct) AS tumor_size_change_pct,

    COUNT(pfs_weeks) AS pfs_weeks,

    COUNT(os_weeks) AS os_weeks,

    COUNT(max_adverse_event_grade) AS max_adverse_event_grade,

    COUNT(trial_completed) AS trial_completed

FROM oncology_clinical_trials;

every value equals 5000, there are no NULLs.

Query 4 — Age Distribution

SELECT
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    ROUND(AVG(age),2) AS average_age
FROM oncology_clinical_trials;

Query 5 — Cancer Types

SELECT
    cancer_type,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY cancer_type
ORDER BY patient_count DESC;

Query 6 — Cancer Stages

SELECT
    stage,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY stage
ORDER BY stage;

Query 7 — ECOG Scores

SELECT
    ecog_score,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY ecog_score
ORDER BY ecog_score;

Query 8 — Smoking History

SELECT
    smoking_history,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY smoking_history
ORDER BY patient_count DESC;

Query 9 — Treatment Arms

SELECT
    treatment_arm,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY treatment_arm
ORDER BY patient_count DESC;

Query 10 — Trial Completion

SELECT
    trial_completed,
    COUNT(*) AS patient_count
FROM oncology_clinical_trials
GROUP BY trial_completed;
