/*
===============================================================================
Project: Oncology Clinical Trial Analysis
Author : Ayan Goswami
Database: PostgreSQL
Purpose : Create the table for storing oncology clinical trial patient data.
===============================================================================
*/

-- Create the clinical trial table
CREATE TABLE oncology_clinical_trials (

    patient_id VARCHAR(15) PRIMARY KEY,

    cancer_type VARCHAR(50) NOT NULL,

    stage VARCHAR(10) NOT NULL,

    treatment_arm VARCHAR(30) NOT NULL,

    age INTEGER NOT NULL,

    sex VARCHAR(10) NOT NULL,

    ecog_score INTEGER NOT NULL,

    smoking_history VARCHAR(20) NOT NULL,

    comorbidity_count INTEGER NOT NULL,

    treatment_cycles INTEGER NOT NULL,

    best_response VARCHAR(30) NOT NULL,

    tumor_size_change_pct NUMERIC(6,2) NOT NULL,

    pfs_weeks INTEGER NOT NULL,

    os_weeks INTEGER NOT NULL,

    max_adverse_event_grade INTEGER NOT NULL,

    trial_completed VARCHAR(5) NOT NULL
);
