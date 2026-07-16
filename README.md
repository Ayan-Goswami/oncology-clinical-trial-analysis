# 🧬 Oncology Clinical Trial Analysis using PostgreSQL

> An end-to-end SQL healthcare analytics project exploring patient demographics, treatment effectiveness, and survival outcomes from a synthetic oncology clinical trial dataset.

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-blue?logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-Advanced-green)
![Status](https://img.shields.io/badge/Status-In%20Progress-orange)
![Records](https://img.shields.io/badge/Dataset-5000%20Patients-blue)

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

Rather than simply writing SQL queries, this project demonstrates how healthcare datasets are transformed into meaningful clinical insights.

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
```

---

# Project Workflow

| Phase | Status |
|-------------------------------|:------:|
| Database Setup | ✅ |
| Data Quality Assessment | ✅ |
| Exploratory Data Analysis | ✅ |
| Treatment Effectiveness Analysis | ✅ |
| Survival Analysis | ⏳ |
| Patient Risk Analysis | ⏳ |
| Advanced SQL Analytics | ⏳ |
| Final Clinical Report | ⏳ |

---

# Completed Analysis

## Database Design

- PostgreSQL database created
- Relational table designed
- Primary Key implemented
- Dataset imported successfully

---

## Data Quality Assessment

Performed validation checks for:

- Record count
- Duplicate Patient IDs
- Missing values
- Age validation
- Cancer type validation
- Stage validation
- ECOG score validation
- Smoking history
- Treatment arms
- Trial completion

### Results

- ✅ 5,000 patient records imported
- ✅ No duplicate Patient IDs
- ✅ No missing values detected

---

## Exploratory Data Analysis

### Analyses Performed

- Patient age statistics
- Sex distribution
- Cancer type distribution
- Cancer stage distribution
- Age group analysis
- ECOG performance analysis
- Smoking history analysis
- Treatment allocation

### Key Findings

- Average patient age: **57.67 years**
- Age range: **19–85 years**
- Nearly equal male and female enrollment
- Breast cancer was the most common cancer type
- Stage III represented the largest disease group
- ECOG Score 1 was most frequently observed
- Smoking history was evenly distributed

---

## Treatment Effectiveness Analysis

### Analyses Performed

- Treatment arm distribution
- Best response analysis
- Response by treatment arm
- Average tumor size change
- Average treatment cycles
- Progression-Free Survival (PFS)
- Overall Survival (OS)

### Key Findings

- 23 unique treatment regimens were evaluated.
- Partial Response was the most common treatment outcome.
- Most therapies averaged between 6 and 7 treatment cycles.
- FOLFOX demonstrated the highest average Progression-Free Survival.
- Venetoclax + Azacitidine achieved the highest average Overall Survival.
- Treatment effectiveness varied across therapeutic regimens.

---

# SQL Skills Demonstrated

- CREATE TABLE
- Data Import
- Data Validation
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Expressions
- Multi-column Aggregation
- Clinical Data Exploration
- Treatment Effectiveness Analysis

Upcoming:

- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Clinical Reporting Queries

---

# Project Documentation

| Document | Description |
|----------|-------------|
| data_dictionary.md | Variable definitions |
| project_report.md | Complete analytical findings |

---

# Screenshots

The repository contains screenshots illustrating:

- Database creation
- Data import
- Validation queries
- Exploratory analysis
- Treatment effectiveness analysis

---

# Current Progress

**Project Completion:** **~60%**

Completed:

- ✅ Database Setup
- ✅ Data Quality Assessment
- ✅ Exploratory Data Analysis
- ✅ Treatment Effectiveness Analysis

Remaining:

- Survival Analysis
- Patient Risk Analysis
- Advanced SQL
- Final Report

---

# About This Project

This repository was developed as a portfolio project to demonstrate practical SQL skills within a healthcare analytics context. It reflects a structured, end-to-end workflow commonly used by clinical data analysts, from database creation and validation to clinical outcome analysis and reporting.
