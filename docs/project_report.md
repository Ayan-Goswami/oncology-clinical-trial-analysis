# Oncology Clinical Trial Analysis Report

## Project Summary

This project analyzes a synthetic oncology clinical trial dataset containing **5,000 patient records** using **PostgreSQL** and **SQL**. The objective is to simulate a real-world clinical data analytics workflow by exploring patient demographics, disease characteristics, treatment effectiveness, and survival outcomes through structured SQL analysis.

The project is organized into multiple analytical phases, beginning with database design and progressing toward advanced clinical reporting.

---

# Phase 1: Database Setup

## Completed Tasks

- Created PostgreSQL database
- Designed the `oncology_clinical_trials` table
- Imported processed clinical trial dataset
- Verified successful data import

### Result

| Metric | Value |
|--------|------:|
| Total Records Imported | 5,000 |

The database was successfully created and populated without import errors.

---

# Phase 2: Data Quality Assessment

Comprehensive validation queries were executed prior to analysis to ensure data integrity.

## Validation Checks

| Check | Result |
|--------|--------|
| Total Records | ✅ 5,000 |
| Duplicate Patient IDs | ✅ None Found |
| Missing Values | ✅ None Detected |
| Primary Key Integrity | ✅ Valid |

### Findings

The dataset successfully passed all quality validation checks.

- No duplicate patient identifiers
- No missing values across selected variables
- All records available for downstream analysis

---

# Phase 3: Exploratory Data Analysis

## Patient Demographics

### Age Statistics

| Statistic | Value |
|-----------|------:|
| Minimum Age | 19 Years |
| Maximum Age | 85 Years |
| Average Age | 57.67 Years |

### Interpretation

The patient population primarily consists of middle-aged and older adults, consistent with the epidemiology of many adult malignancies.

---

## Sex Distribution

| Sex | Patients |
|------|---------:|
| Male | 2,502 |
| Female | 2,498 |

### Interpretation

The dataset demonstrates an almost perfectly balanced sex distribution, minimizing demographic bias for comparative analyses.

---

## Average Age by Sex

| Sex | Average Age |
|------|------------:|
| Female | 57.70 Years |
| Male | 57.64 Years |

### Interpretation

Average patient age is virtually identical across both sexes, indicating comparable demographic characteristics.

---

## Age Group Distribution

| Age Group | Patients |
|-----------|---------:|
| Under 40 | 326 |
| 40–49 | 937 |
| 50–59 | 1,550 |
| 60–69 | 1,355 |
| 70+ | 832 |

### Interpretation

Approximately 58% of participants are between **50 and 69 years**, reflecting the age range in which many cancers are most frequently diagnosed.

---

## Cancer Type Distribution

| Cancer Type | Patients |
|-------------|---------:|
| Breast | 1,005 |
| Lung | 945 |
| Colorectal | 654 |
| Prostate | 632 |
| Leukemia | 497 |
| Lymphoma | 478 |
| Pancreatic | 407 |
| Ovarian | 382 |

### Interpretation

Breast and lung cancers account for the largest proportion of enrolled patients, together representing approximately 39% of the study population.

---

## Cancer Stage Distribution

| Stage | Patients |
|-------|---------:|
| I | 743 |
| II | 1,253 |
| III | 1,701 |
| IV | 1,303 |

### Interpretation

Stage III disease represents the largest subgroup, followed by Stage IV, suggesting that many enrolled patients have advanced disease requiring systemic treatment.

---

## Cancer Type by Stage

Cancer stage frequencies were evaluated within each cancer type.

### Interpretation

Across nearly all cancer types, Stage III patients formed the largest subgroup, indicating that the simulated trial primarily focuses on patients with locally advanced disease.

---

## ECOG Performance Status

| ECOG Score | Patients |
|-----------:|---------:|
| 0 | 1,004 |
| 1 | 1,959 |
| 2 | 1,425 |
| 3 | 612 |

### Interpretation

An ECOG score of **1** was most common, indicating that most patients remain ambulatory while experiencing mild functional limitations.

---

## Smoking History

| Smoking Status | Patients |
|----------------|---------:|
| Former | 1,722 |
| Current | 1,642 |
| Never | 1,636 |

### Interpretation

Smoking history is almost evenly distributed across the cohort, allowing future subgroup analyses without major imbalance.

---

## Treatment Arm Distribution

The study includes **23 distinct treatment regimens**, including chemotherapy, immunotherapy, targeted therapy, and combination therapies.

### Interpretation

The broad range of treatment strategies provides a diverse dataset for comparative effectiveness analyses.

---

# Phase 4: Treatment Effectiveness Analysis

Treatment effectiveness was evaluated using multiple clinical outcome measures.

## Analyses Performed

- Treatment arm distribution
- Best response distribution
- Response by treatment arm
- Average tumor size change
- Average treatment cycles
- Average Progression-Free Survival (PFS)
- Average Overall Survival (OS)

---

## Overall Treatment Response

| Response | Patients |
|----------|---------:|
| Partial Response | 1,687 |
| Stable Disease | 1,361 |
| Progressive Disease | 1,229 |
| Complete Response | 723 |

### Interpretation

Partial Response was the most frequently observed treatment outcome, while Complete Response was the least common. Most patients experienced either partial tumor reduction or disease stabilization.

---

## Treatment Exposure

Analysis of treatment cycles demonstrated that most therapies averaged between **6 and 7 treatment cycles**, indicating relatively consistent treatment exposure across study groups.

---

## Tumor Size Change

Average tumor size change was compared across all treatment regimens.

### Interpretation

Treatment arms demonstrated measurable variation in average tumor size change, suggesting differences in therapeutic effectiveness.

> **Note:** The dataset represents tumor size change using positive percentage values. Interpretations therefore follow the dataset conventions rather than clinical RECIST sign conventions.

---

## Progression-Free Survival (PFS)

Average progression-free survival was calculated for each treatment arm.

### Key Observation

Among the evaluated therapies, **FOLFOX** demonstrated the highest average progression-free survival.

---

## Overall Survival (OS)

Average overall survival was compared across all treatment groups.

### Key Observation

**Venetoclax + Azacitidine** demonstrated the highest average overall survival in this synthetic dataset.

---

## Overall Interpretation

Treatment effectiveness varied across therapeutic regimens, with differences observed in clinical response, treatment exposure, tumor size change, progression-free survival, and overall survival. These findings demonstrate how SQL can be used to evaluate comparative treatment outcomes using routinely collected clinical trial data.

---

# Overall Findings

- Successfully built and validated a PostgreSQL clinical trial database containing **5,000 patient records**.
- No duplicate patient identifiers or missing values were detected.
- Average participant age was **57.67 years**.
- Male and female enrollment was nearly identical.
- Breast cancer represented the largest disease subgroup.
- Stage III disease was the most frequently observed stage.
- ECOG Performance Score of **1** predominated.
- Twenty-three treatment regimens were analyzed.
- Partial Response was the most common treatment outcome.
- FOLFOX demonstrated the highest average Progression-Free Survival.
- Venetoclax + Azacitidine demonstrated the highest average Overall Survival.

---

# Project Progress

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

# Next Phase

The remaining phases of the project will focus on:

- Survival analysis
- Patient risk stratification
- Adverse event analysis
- Common Table Expressions (CTEs)
- Window Functions
- Ranking functions
- Advanced SQL reporting
- Final clinical insights and conclusions
