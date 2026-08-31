/*
===============================================================================
Project : Oncology Clinical Trial Analysis
Author  : Ayan Goswami
File    : 06_patient_risk_analysis.sql

Description:
This script analyzes patient characteristics associated with clinical risk
and survival outcomes. The analysis examines factors including cancer stage,
ECOG performance status, age, smoking history, comorbidity burden, and
adverse event severity.

===============================================================================
*/

/*
===============================================================================
Question:
How does survival vary according to comorbidity burden?

Purpose:
Evaluates whether patients with multiple comorbidities demonstrate
different progression-free survival and overall survival outcomes.
===============================================================================
*/

SELECT
    comorbidity_count,
    COUNT(*) AS patient_count,
    ROUND(AVG(pfs_weeks), 2) AS average_pfs,
    ROUND(AVG(os_weeks), 2) AS average_os
FROM oncology_clinical_trials
GROUP BY comorbidity_count
ORDER BY comorbidity_count;
