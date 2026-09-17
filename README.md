#lab-2-hds

# Lab 2 - Gene Expression Differences in the Airway smooth muscle RNA-seq Dataset

This project looks at the difference in gene expressions across the following treatments:
  - Untreated
  - Dexamethasone
  - Albuterol
  - Dexamethasone + Albuterol

RNA-Seq expression data is used from from NCBI GEO accession **GSE52778**.

## Research Questions: Which genes show the greatest differences across treatments?

## Outline of repo -
```text
├── README.md
├── AI_USAGE.md
├── .gitignore
├── diff_across_tx.ipynb
├── diff_across_tx.Rmd
├── diff_across_tx.html
├── Lab2.html
├── import_data.py
├── import_data.R
```

The analysis is as follows:
1. Download the original GEO expression data
2. Select column names for the four treatment conditions
3. Apply a log2(FPKM + 1) transformation
4. Identify genes with the largest expression differences across treatments
5. Visualize the results

*To import data without running the full code, use the import_data files*

## Jupyter Notebook

Run file: diff_across_tx.ipynb
Output: diff_across_tx.html

*Required packages: pandas, numpy, matplotlib*

To re-run this experiment open the run file in Jupyter notebooks.
Ensuring all packages are installed, use **Restart & Run All**

## R Markdown

Run file: diff_across_tx.Rmd
Output: Lab2.html

To re-run this experiment open the run file in RStudio.
Select **Knit**

## *Comparison of R vs Python is included at the end of both codes as a markdown.* 

