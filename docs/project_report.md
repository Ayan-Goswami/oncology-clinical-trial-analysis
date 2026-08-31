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

# Phase 5: Survival Analysis

The survival analysis phase evaluated **Progression-Free Survival (PFS)** and **Overall Survival (OS)** across demographic and clinical variables.

A total of **10 SQL queries** were performed to investigate overall survival patterns and identify factors associated with differences in patient outcomes.

---

## Overall Survival Statistics

| Metric | PFS (Weeks) | OS (Weeks) |
|--------|------------:|-----------:|
| Minimum | 2 | 2 |
| Maximum | 75 | 100 |
| Average | 26.26 | 45.85 |

### Interpretation

Average Overall Survival was substantially higher than average Progression-Free Survival. This pattern is expected because patients may continue living for a period following disease progression.

---

## Survival by Cancer Type

Average PFS and OS were compared across the eight cancer types.

| Cancer Type | Patients | Average PFS | Average OS |
|-------------|---------:|------------:|-----------:|
| Pancreatic | 407 | 26.86 | 46.99 |
| Lung | 945 | 26.54 | 46.20 |
| Breast | 1,005 | 26.58 | 45.99 |
| Colorectal | 654 | 26.73 | 45.70 |
| Leukemia | 497 | 26.09 | 45.69 |
| Lymphoma | 478 | 26.11 | 45.67 |
| Ovarian | 382 | 25.82 | 45.35 |
| Prostate | 632 | 24.94 | 45.06 |

### Interpretation

Survival outcomes showed moderate variation across cancer types.

- **Pancreatic cancer** demonstrated the highest average Overall Survival at **46.99 weeks**.
- **Prostate cancer** demonstrated the lowest average Overall Survival at **45.06 weeks**.
- Differences between cancer types were present but relatively modest within this synthetic dataset.

---

## Survival by Cancer Stage

| Stage | Patients | Average PFS | Average OS |
|-------|---------:|------------:|-----------:|
| I | 743 | 45.68 | 65.31 |
| II | 1,253 | 34.79 | 54.57 |
| III | 1,701 | 21.81 | 41.26 |
| IV | 1,303 | 12.77 | 32.35 |

### Interpretation

Cancer stage demonstrated one of the strongest associations with survival outcomes.

Both Progression-Free Survival and Overall Survival declined consistently as cancer stage advanced.

- Stage I patients had the longest survival outcomes.
- Stage IV patients had the shortest survival outcomes.
- Average PFS declined from **45.68 weeks** in Stage I to **12.77 weeks** in Stage IV.
- Average OS declined from **65.31 weeks** in Stage I to **32.35 weeks** in Stage IV.

This pattern demonstrates a strong relationship between disease severity and patient survival.

---

## Survival by Age Group

Patients were segmented into age groups using SQL `CASE` expressions.

| Age Group | Patients | Average PFS | Average OS |
|-----------|---------:|------------:|-----------:|
| Under 40 | 326 | 26.37 | 46.19 |
| 40–49 | 937 | 26.93 | 46.80 |
| 50–59 | 1,550 | 25.58 | 45.17 |
| 60–69 | 1,355 | 26.63 | 46.32 |
| 70+ | 832 | 26.10 | 45.11 |

### Interpretation

Survival outcomes varied modestly across age groups.

- Patients aged **40–49 years** demonstrated the highest average PFS and OS.
- Patients aged **70+ years** showed the lowest average OS.
- Overall differences between age groups were relatively small compared with the differences observed across cancer stages.

This analysis also demonstrated the use of conditional SQL logic to dynamically create analytical patient segments.

---

## Survival by ECOG Performance Status

| ECOG Score | Patients | Average PFS | Average OS |
|-----------:|---------:|------------:|-----------:|
| 0 | 1,004 | 31.53 | 50.75 |
| 1 | 1,959 | 27.23 | 46.84 |
| 2 | 1,425 | 23.74 | 43.52 |
| 3 | 612 | 20.35 | 40.00 |

### Interpretation

ECOG Performance Status showed a clear relationship with survival.

As ECOG score increased, both PFS and OS decreased.

- ECOG 0 patients had the highest survival outcomes.
- ECOG 3 patients had the lowest survival outcomes.

This indicates that better functional status was associated with improved survival in the study population.

---

## Survival by Smoking History

| Smoking History | Patients | Average PFS | Average OS |
|-----------------|---------:|------------:|-----------:|
| Current | 1,642 | 26.02 | 45.87 |
| Former | 1,722 | 26.27 | 45.83 |
| Never | 1,636 | 26.47 | 45.83 |

### Interpretation

Survival outcomes were highly similar across smoking history categories.

The differences in average PFS and OS were minimal, suggesting that smoking history did not demonstrate a strong association with survival outcomes within this synthetic dataset.

---

## Survival by Trial Completion Status

| Trial Completed | Patients | Average PFS | Average OS |
|-----------------|---------:|------------:|-----------:|
| Yes | 1,926 | 34.59 | 54.06 |
| No | 3,074 | 21.03 | 40.70 |

### Interpretation

Trial completion status demonstrated a substantial difference in survival outcomes.

Patients who completed the trial showed:

- Higher average PFS
- Higher average OS

The difference may reflect underlying clinical factors associated with treatment tolerance, disease progression, or patient retention.

Because this is observational analysis within a synthetic dataset, the results should not be interpreted as evidence that trial completion directly causes improved survival.

---

## Survival by Maximum Adverse Event Grade

| Adverse Event Grade | Patients | Average PFS | Average OS |
|--------------------:|---------:|------------:|-----------:|
| 0 | 1,512 | 26.51 | 46.27 |
| 1 | 1,428 | 26.13 | 45.68 |
| 2 | 1,091 | 26.19 | 46.21 |
| 3 | 657 | 26.14 | 45.64 |
| 4 | 312 | 26.06 | 45.77 |

### Interpretation

Average survival remained relatively stable across adverse event grades.

The differences observed in both PFS and OS were small, suggesting that maximum adverse event grade did not show a strong independent relationship with survival in this synthetic dataset.

---

## Survival Gap Analysis by Cancer Stage

A derived survival metric was created to measure the difference between Overall Survival and Progression-Free Survival.

### Formula

```text
Survival Gap = Average OS − Average PFS
