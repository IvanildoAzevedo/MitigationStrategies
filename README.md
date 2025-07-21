
# Research artifacts

The archived artifact is publicly available via Zenodo: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15972164.svg)](https://doi.org/10.5281/zenodo.15972164) 

<br>

## 📋 Overview


This study aims to investigate how replication studies in Software Engineering report and address threats to validity from original studies, whether they reinterpret or reassess these threats, and whether new Threats to Validity (TTVs) emerge during replication. This analysis highlights mitigation strategies and underscores the role of replication in enhancing methodological rigor, reliability, and external validity in empirical research.

To support this investigation and ensure transparency and reproducibility, this repository contains the dataset, scripts, and documentation associated with the paper **Validity Challenges in the Replication in Software Engineering**.
<br>

## 📂 Repository Structure

```
MitigationStrategies/
├── data/
│   ├── material/
│   │   ├── criteria.md
│   │   ├── materials.md
│   │   ├── scopus-results.xlsx
│   │   ├── scopus2022.bib
│   │   ├── scopus2023.bib
│   │   └── scopus2024.bib
│   ├── scripts/
│   │   ├── scripts.md
│   │   ├── MitigationStrategiesScript.R
│   │   ├── CorrMitTTVsMacroCategories.xlsx
│   │   ├── heatmap.jpg
│   │   └── heatmap.pdf
│   ├── SLR-data/
│   │   ├── data-details.md
│   │   └── data.xlsx
│   └── MitigationStrategies-Data.xlsx
├── LICENSE
├── LICENSE-MIT
├── Paper.pdf (This file will be added in the future)
└── README.md
```

### 📂 data/
Contains all materials, data, and scripts used or produced in the study.

#### Download files

- **MitigationStrategies-Data.xlsx**: This file contains the categorized qualitative data used to analyze mitigation strategies for TTVs in replication studies. The categories were derived through Reflexive Thematic Analysis and form the basis for the results presented in the paper.

### 📂 [data/material/](data/material/materials.md)
Research planning material: search string, inclusion/exclusion criteria, and SCOPUS exports.

#### Download files

- **scopus2022.bib**: BibTeX file with all search results retrieved in 2022.

- **scopus2023.bib**: BibTeX file with all search results retrieved in 2023.

- **scopus2024.bib**: BibTeX file with all search results retrieved in 2024.

- **scopus-results.xlsx** - Spreadsheet listing all retrieved studies (from 2022–2024) along with their inclusion or exclusion status from the selection process.


### 📂 [data/scripts/](data/scripts/scripts.md)
R scripts and supporting files for generating the figure and performing statistical analysis.

#### Download files

- **MitigationStrategiesScript.R**: R script to compute, through Fisher’s test and Phi Coefficient, the association between the different types of TTVs (internal, external, construct, and conclusion) and the four mitigation categories: Refinement and validation of data collection instruments (C1), Minimization of researcher bias and subjectivity (C2), Management and validation of data repositories/tools (C3), and Control and standardization of the experimental environment (C4). This analysis supports Figure 4 in the paper, which visualizes the associations between TTVs and mitigation categories.

- **CorrMitTTVsMacroCategories.xlsx**: Data to run the R script (this sheet is also available in the spreadsheet MitigationStrategies-Data.xls).

- **heatmap.jpg** and **heatmap.pdf**: Outputs of the R script.


### 📂 [data/SLR-data/](data/SLR-data/data-details.md)
Extracted data, quantitative, and qualitative summaries from the SLR process.

#### Download files

- **data.xlsx**: Spreadsheet containing all data points extracted during the SLR. It includes metadata about the selected studies, reported TTVs, and other coded variables used in the analysis.


### 📄 Paper <!--[Paper.pdf](Paper.pdf)-->
The preprint will be shared following approval. <!--The full paper, related to this artifact, describing the study's goals, methodology, analysis, and findings.-->

### 📄 [LICENSE](LICENSE) / [LICENSE-MIT](LICENSE-MIT)
Define the usage terms for the data and scripts.

### 📄 README.md
This file provides an overview of the repository and a guide for usage. <!--This file provides an overview of the repository, a guide for usage, and instructions on how to cite this artifact.-->



<br>

## 💾 Storage Requirements
The total size of this repository is under 20 MB. No special storage requirements are needed.

<br>

## 🛠 How to Run the Scripts

### ⚙️ Requirements

To run the scripts, you need:

- [R](https://cran.r-project.org/) installed on your machine.

- [RStudio](https://www.rstudio.com/products/rstudio/download/) (optional, but recommended).


### 🖥️ System Requirements

No specific hardware requirements are needed to execute the scripts.


### 🛠 Steps to Run

1. Download and install **R**.
2. Download and install **RStudio** (optional).
3. Download the R script from the [scripts folder](data/scripts/scripts.md).
4. Open the R script.
6. Run the script using:
  - **Mac**: `Cmd + Shift + Enter`
  - **Windows/Linux**: `Ctrl + Shift + Enter`
5. The output is the statistical result and a plot, that will be saved in the same folder as the script.

> 💡 The script generates the Figure 4, presented in the paper. <!-- [paper](Paper.pdf).-->

> 💡 Make sure both the data file and R script are in the same directory.

<br>


## 🛡️ Ethical and Legal Considerations

This study was conducted strictly for academic research purposes and adheres to institutional research ethics guidelines. No personal or sensitive data were collected.

<br>

## 📜 License

- **R scripts** are licensed under the [MIT License](LICENSE-MIT).
- **Research data and artifacts** are licensed under the [CC BY 4.0 License](LICENSE).