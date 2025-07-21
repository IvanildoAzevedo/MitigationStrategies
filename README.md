
# Research artifacts

<!--[![DOI](AKIIIII)](AKIIIII)-->

<br>

## 📋 Overview


This study aims to investigate how replication studies in Software Engineering report and address threats to validity from original studies, whether they reinterpret or reassess these threats, and whether new TTVs emerge during replication. This analysis highlights mitigation strategies and underscores the role of replication in enhancing methodological rigor, reliability, and external validity in empirical research.

To support this investigation and ensure transparency and reproducibility, this repository contains the dataset, scripts, and documentation associated with the paper **Validity Challenges in the Replication in Software Engineering**.
<br>

## 📂 Repository Structure

```
MitigationStrategies/
├── data/
│   ├── material/
│   ├── scripts/
│   ├── SLR-data/
│   └── MitigationStrategies-Data.xlsx
├── LICENSE
├── LICENSE-MIT
├── Paper.pdf (This file will be added in the future)
└── README.md
```

### 📂 data/
Contains all materials, data, and scripts used or produced in the study.

### 📂 [data/material/](data/material/materials.md)
Research planning material: search string, inclusion/exclusion criteria, and SCOPUS exports.

### 📂 [data/scripts/](data/scripts/scripts.md)
R scripts and supporting files for generating figure and performing statistical analysis.

### 📂 [data/SLR-data/](data/SLR-data/data-details.md)
Extracted data, quantitative, and qualitative summaries from the SLR process.

### 📄 [Paper.pdf](Paper.pdf)
The preprint will be shared following approval. <!--The full paper, related to this artifact, describing the study's goals, methodology, analysis, and findings.-->

### 📄 [LICENSE](LICENSE) / [LICENSE-MIT](LICENSE-MIT)
Define the usage terms for the data and scripts.

### 📄 README.md
This file includes an overview, usage guide, and citation instructions.

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

<!--## 📄 Citation

### 📝 Citing the Paper

If you use the data or findings from this repository, please cite the paper:

```bibtex
@inproceedings{AzevedoEtAl2025,
    author = {Ivanildo Azevedo and 
            Ana Paula Vasconcelos and 
            Eudis Teixeira and 
            Sergio Soares},
    title = {Reimagining Studies’ Replication: A Validity-Driven Analysis of Threats in Empirical Software Engineering},
    booktitle = {Proceedings of the 39th Brazilian Symposium on Software Engineering - Insightful Ideas and Emerging Results (IIER '25)},
    location = {Recife/PE},
    year = {2025},
    issn = {},
    pages = {},
    publisher = {SBC},
    address = {Porto Alegre, RS, Brasil},
    doi = {},
    url = {}
}
```

### 📦 Citing the Artifact

If you prefer to cite only the archived artifact at Zenodo:

```bibtex
@misc{AzevedoEtAl2025,
  author       = {Ivanildo Azevedo and
                  Ana Paula Vasconcelos and
                  Eudis Teixeira and
                  Sergio Soares},
  title        = {Research Artifacts of Reimagining Studies’ Replication: 
                A Validity-Driven Analysis of Threats in Empirical Software Engineering},
  year         = {2025},
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.15511661},
  url          = {https://doi.org/10.5281/zenodo.15511661}
}
```

<br>-->

## 🛡️ Ethical and Legal Considerations

This study was conducted strictly for academic research purposes and adheres to institutional research ethics guidelines. No personal or sensitive data were collected.

<br>

## 📜 License

- **R scripts** are licensed under the [MIT License](LICENSE-MIT).
- **Research data and artifacts** are licensed under the [CC BY 4.0 License](LICENSE).