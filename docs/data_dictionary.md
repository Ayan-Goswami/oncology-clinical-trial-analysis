# Data Dictionary

## Dataset Overview

This document describes the variables used in the processed oncology clinical trial dataset.

| Column Name             | Data Type | Description                                                                                    |
| ----------------------- | --------- | ---------------------------------------------------------------------------------------------- |
| patient_id              | VARCHAR   | Unique identifier assigned to each patient enrolled in the clinical trial.                     |
| cancer_type             | VARCHAR   | Primary cancer diagnosis of the patient (e.g., Breast, Lung, Colon).                           |
| stage                   | VARCHAR   | Clinical stage of cancer at enrollment.                                                        |
| treatment_arm           | VARCHAR   | Treatment group assigned during the clinical trial.                                            |
| age                     | INTEGER   | Patient age (years) at the time of enrollment.                                                 |
| sex                     | VARCHAR   | Biological sex of the patient.                                                                 |
| ecog_score              | INTEGER   | ECOG Performance Status score indicating the patient's functional status (0–4).                |
| smoking_history         | VARCHAR   | Smoking status of the patient (Never, Former, Current).                                        |
| comorbidity_count       | INTEGER   | Number of co-existing medical conditions.                                                      |
| treatment_cycles        | INTEGER   | Number of treatment cycles completed.                                                          |
| best_response           | VARCHAR   | Best observed clinical response to treatment.                                                  |
| tumor_size_change_pct   | NUMERIC   | Percentage change in tumor size following treatment. Negative values indicate tumor reduction. |
| pfs_weeks               | INTEGER   | Progression-Free Survival (PFS) measured in weeks.                                             |
| os_weeks                | INTEGER   | Overall Survival (OS) measured in weeks.                                                       |
| max_adverse_event_grade | INTEGER   | Highest recorded adverse event grade according to CTCAE criteria.                              |
| trial_completed         | VARCHAR   | Indicates whether the patient completed the clinical trial.                                    |

---

## Dataset Summary

* Total Records: **5,000**
* Total Variables: **16**
* Data Source: Synthetic Oncology Clinical Trial Dataset
* Database: PostgreSQL
* Analysis Tool: SQL

