# 🧬 Oncology Clinical Trial Analysis using PostgreSQL

> An end-to-end SQL healthcare analytics project exploring patient demographics, treatment effectiveness, and survival outcomes from a synthetic oncology clinical trial dataset.

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-blue?logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-Advanced-green)
![Status](https://img.shields.io/badge/Status-In%20Progress-orange)
![Records](https://img.shields.io/badge/Dataset-5000%20Patients-blue)

---

# Project Highlights

- 📊 5,000 synthetic oncology clinical trial records
- 🗃️ PostgreSQL relational database
- 🩺 16 clinical variables analyzed
- 💊 23 treatment regimens evaluated
- 📈 40+ SQL queries
- 🔬 Survival outcome analysis across multiple clinical factors
- 📄 Comprehensive documentation
- 📸 Query outputs and screenshots included

---

# Project Overview

This project simulates the workflow of a **Clinical Data Analyst** by analyzing a synthetic oncology clinical trial dataset using **PostgreSQL**.

The analysis follows the complete lifecycle of a real-world analytics project:

- Database Design
- Data Import
- Data Quality Assessment
- Exploratory Data Analysis
- Treatment Effectiveness Analysis
- Survival Analysis
- Patient Risk Assessment
- Advanced SQL Analytics
- Clinical Reporting

Rather than simply writing SQL queries, this project demonstrates how healthcare datasets can be transformed into meaningful clinical insights using structured SQL analysis.

---

# Dataset

**Dataset:** Synthetic Oncology Clinical Trial Dataset

**Total Records:** 5,000 Patients

**Variables:** 16 Clinical Features

The dataset contains patient demographics, cancer characteristics, treatment information, clinical responses, survival outcomes, and adverse event data.

### Variables

- Patient ID
- Cancer Type
- Cancer Stage
- Treatment Arm
- Age
- Sex
- ECOG Performance Score
- Smoking History
- Comorbidity Count
- Treatment Cycles
- Best Response
- Tumor Size Change (%)
- Progression-Free Survival (PFS)
- Overall Survival (OS)
- Maximum Adverse Event Grade
- Trial Completion Status

---

# Project Objectives

The primary objectives are to:

- Build a PostgreSQL database from a raw clinical dataset
- Validate data quality before analysis
- Explore patient demographics and disease characteristics
- Compare treatment effectiveness
- Evaluate survival outcomes
- Investigate patient risk factors
- Apply advanced SQL techniques
- Produce a portfolio-ready healthcare analytics case study

---

# Tech Stack

| Technology | Purpose |
|------------|---------|
| PostgreSQL | Database |
| pgAdmin 4 | Database Management |
| SQL | Data Analysis |
| Git | Version Control |
| GitHub | Project Documentation |

---

# Repository Structure

```text
oncology-clinical-trial-analysis/

│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_quality_assessment.sql
│   ├── 03_exploratory_analysis.sql
│   ├── 04_treatment_effectiveness.sql
│   ├── 05_survival_analysis.sql
│   ├── 06_patient_risk_analysis.sql
│   └── 07_advanced_sql.sql
│
├── screenshots/
│
├── docs/
│   ├── data_dictionary.md
│   └── project_report.md
│
├── README.md
└── LICENSE
