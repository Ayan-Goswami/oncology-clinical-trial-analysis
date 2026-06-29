# Oncology Clinical Trial Analysis

## Project Highlights

- 📊 5,000 synthetic oncology clinical trial records
- 🗃️ PostgreSQL relational database
- 🩺 16 clinical variables analyzed
- ✅ Data quality validation completed
- 📈 Exploratory data analysis completed
- 💻 30+ SQL queries (and growing)
- 📁 Fully documented GitHub portfolio project
  
## Overview

This project analyzes a synthetic oncology clinical trial dataset using **PostgreSQL** and **SQL**. The objective is to demonstrate real-world healthcare data analytics by exploring patient demographics, disease characteristics, treatment patterns, and clinical outcomes through structured SQL analysis.

The project follows an end-to-end analytics workflow similar to that used by clinical data analysts, progressing from database design and data validation to exploratory data analysis, treatment evaluation, survival analysis, and advanced SQL reporting.

---

## Project Objectives

* Design and implement a relational database using PostgreSQL.
* Import and validate a clinical trial dataset.
* Perform comprehensive data quality assessment.
* Explore patient demographics and disease characteristics.
* Analyze treatment allocation and effectiveness.
* Evaluate progression-free survival (PFS) and overall survival (OS).
* Investigate adverse event severity and trial completion.
* Apply advanced SQL techniques to generate clinical insights.
* Build a portfolio-ready healthcare analytics case study.

---

## Tech Stack

* PostgreSQL
* pgAdmin 4
* SQL
* Git
* GitHub

---

## Dataset

This project uses a **synthetic oncology clinical trial dataset** containing **5,000 patient records**.

### Variables Included

* Patient ID
* Cancer Type
* Cancer Stage
* Treatment Arm
* Age
* Sex
* ECOG Performance Score
* Smoking History
* Comorbidity Count
* Treatment Cycles
* Best Response
* Tumor Size Change (%)
* Progression-Free Survival (Weeks)
* Overall Survival (Weeks)
* Maximum Adverse Event Grade
* Trial Completion Status

---

## Repository Structure

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
```

---

## Project Workflow

| Phase                            | Status |
| -------------------------------- | :----: |
| Database Design                  |    ✅   |
| Data Import                      |    ✅   |
| Data Quality Assessment          |    ✅   |
| Exploratory Data Analysis        |    ✅   |
| Treatment Effectiveness Analysis |    ⏳   |
| Survival Analysis                |    ⏳   |
| Clinical Insights                |    ⏳   |
| Advanced SQL Queries             |    ⏳   |
| Final Project Report             |    ⏳   |

---

## Completed Analysis

### Database Setup

* Created PostgreSQL database
* Designed relational table schema
* Imported 5,000 clinical trial records
* Verified successful data loading

---

### Data Quality Assessment

The dataset was validated prior to analysis.

Completed checks include:

* Record count verification
* Duplicate patient ID detection
* Missing value assessment
* Age validation
* Cancer type distribution
* Cancer stage validation
* ECOG performance score validation
* Smoking history distribution
* Treatment arm validation
* Trial completion validation

**Result**

* ✅ 5,000 records imported successfully
* ✅ No duplicate patient IDs
* ✅ No missing values detected

---

### Exploratory Data Analysis

Completed analyses include:

* Patient age statistics
* Sex distribution
* Average age by sex
* Age group distribution
* Cancer type distribution
* Cancer stage distribution
* Cancer type by stage
* ECOG performance score distribution
* Smoking history distribution
* Treatment arm distribution

### Key Findings

* Average patient age: **57.67 years**
* Patient ages ranged from **19 to 85 years**
* Male and female enrollment was nearly identical
* Breast cancer was the most common cancer type
* Stage III disease represented the largest patient subgroup
* ECOG Performance Score of 1 was the most frequently observed
* Smoking history was evenly distributed among participants

---

## Skills Demonstrated

### SQL

* DDL (CREATE TABLE)
* Aggregate Functions
* GROUP BY
* ORDER BY
* CASE Expressions
* Data Validation Queries

### Database

* Database Design
* Data Import
* Data Integrity Validation
* Primary Key Implementation

### Healthcare Analytics

* Clinical Trial Data Exploration
* Patient Demographics Analysis
* Disease Stage Analysis
* Performance Status Assessment
* Treatment Distribution Analysis

---

## Documentation

Additional project documentation is available in the `docs/` directory.

* **data_dictionary.md** — Dataset variable descriptions
* **project_report.md** — Detailed analytical findings and project progress

---

## Screenshots

Representative query outputs and validation results are available in the `screenshots/` folder to demonstrate each stage of the analysis.

---

## Future Enhancements

The next phases of the project will include:

* Treatment effectiveness analysis
* Best response evaluation
* Tumor size reduction analysis
* Progression-free survival (PFS)
* Overall survival (OS)
* Adverse event analysis
* Common Table Expressions (CTEs)
* Window Functions
* Ranking and advanced SQL analytics

---

## Project Status

🚧 **Work in Progress**

**Current Progress:** Approximately **40% Complete**

The database has been built, validated, and explored. The remaining phases will focus on clinical outcome analysis and advanced SQL techniques to complete this portfolio project.
