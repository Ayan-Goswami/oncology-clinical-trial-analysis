# Oncology Clinical Trial Analysis Report

## Project Summary

This project analyzes a synthetic oncology clinical trial dataset containing **5,000 patient records** using PostgreSQL. The objective is to explore patient demographics, disease characteristics, treatment allocation, and clinical variables through SQL-based exploratory data analysis.

---

# Phase 1: Database Setup

### Completed Tasks

- Created PostgreSQL database
- Designed the oncology_clinical_trials table
- Imported processed clinical trial dataset
- Verified successful data import

**Result**

- Total Records Imported: **5,000**

---

# Phase 2: Data Quality Assessment

Several validation queries were executed to assess data integrity before analysis.

## Validation Checks

| Check | Result |
|--------|--------|
| Total Records | ✅ 5,000 |
| Duplicate Patient IDs | ✅ None Found |
| Missing Values | ✅ No Missing Values |
| Primary Key Integrity | ✅ Valid |

### Findings

The dataset passed all quality checks.

- No duplicate patient identifiers were detected.
- All selected variables contain complete observations.
- The dataset is suitable for downstream statistical and clinical analysis.

---

# Phase 3: Exploratory Data Analysis

## Patient Demographics

### Age Distribution

| Statistic | Value |
|-----------|------:|
| Minimum Age | 19 Years |
| Maximum Age | 85 Years |
| Average Age | 57.67 Years |

### Interpretation

The study population primarily represents middle-aged and older adults, which aligns with the age groups commonly affected by many cancer types.

---

## Sex Distribution

| Sex | Patients |
|------|---------:|
| Male | 2,502 |
| Female | 2,498 |

### Interpretation

The study population is almost perfectly balanced between male and female participants, minimizing demographic bias related to sex.

---

## Average Age by Sex

| Sex | Average Age |
|------|------------:|
| Female | 57.70 Years |
| Male | 57.64 Years |

### Interpretation

Average patient age is nearly identical between male and female participants, indicating comparable age characteristics across both groups.

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

The largest proportion of participants falls between **50 and 69 years**, representing nearly 60% of the study population. Younger patients (<40 years) constitute only a small fraction of the dataset.

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

Breast and lung cancers account for the largest patient populations in the clinical trial, together representing approximately 39% of all enrolled participants.

---

## Cancer Stage Distribution

| Stage | Patients |
|-------|---------:|
| I | 743 |
| II | 1,253 |
| III | 1,701 |
| IV | 1,303 |

### Interpretation

Stage III disease is the most frequently observed stage in the dataset, followed by Stage IV, suggesting that many enrolled patients have advanced disease requiring systemic treatment.

---

## Cancer Type by Stage

Cancer stage frequencies were evaluated within each cancer type.

### Interpretation

Across nearly all cancer types, Stage III patients represent the largest subgroup, followed by Stage IV. This pattern suggests the simulated clinical trial primarily focuses on patients with locally advanced or metastatic disease.

---

## ECOG Performance Score

| ECOG Score | Patients |
|-----------:|---------:|
| 0 | 1,004 |
| 1 | 1,959 |
| 2 | 1,425 |
| 3 | 612 |

### Interpretation

Most patients have an ECOG Performance Status of **1**, indicating that the majority remain ambulatory and capable of self-care despite disease burden.

---

## Smoking History

| Smoking Status | Patients |
|----------------|---------:|
| Former | 1,722 |
| Current | 1,642 |
| Never | 1,636 |

### Interpretation

Smoking history is evenly distributed across the study population, providing balanced representation for future analyses involving smoking-related risk factors.

---

## Treatment Arm Distribution

Twenty-three treatment regimens are represented within the dataset.

### Interpretation

The clinical trial evaluates a broad range of treatment strategies including chemotherapy, targeted therapy, immunotherapy, and combination regimens, reflecting the diversity of modern oncology clinical trials.

---

# Key Findings

- Successfully imported and validated **5,000 clinical trial records**.
- No duplicate patient IDs or missing values were identified.
- Average participant age is **57.67 years**.
- Sex distribution is nearly perfectly balanced.
- Breast and lung cancers represent the largest patient populations.
- Stage III disease is the most common stage at enrollment.
- ECOG Performance Score of 1 is the predominant functional status.
- Smoking history is evenly represented across participants.
- Twenty-three distinct treatment regimens are included in the dataset.

---

# Next Phase

The next stage of the project will investigate:

- Treatment effectiveness
- Best response rates
- Tumor size reduction
- Progression-free survival (PFS)
- Overall survival (OS)
- Adverse event analysis
- Advanced SQL techniques including CTEs and window functions
