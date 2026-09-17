# AI Usage

# Prompt to ChatGPT:
```text
why is my dataset producing one single column?

url = ("https://www.ncbi.nlm.nih.gov/geo/download/"
       "?acc=GSE52778&format=file&file=GSE52778_All_Sample_FPKM_Matrix.txt.gz")
fpkm = pd.read_csv(url, sep="\t", compression="gzip")
```

# ChatGPT response:
```
Your dataset is probably producing one single column because R or Python is using the wrong delimiter when it reads the file.
In Python/pandas, use:

fpkm = pd.read_csv(
    url,
    compression="gzip",
    sep=r"\s+",
    engine="python"
)

sep=r"\s+" means “split on one or more whitespace characters.”

A good check is:
print(fpkm.columns.tolist())
```

# Prompt to ChatGPT:
```
How do i plot the differences in expression in python the same way I did in R?
```

# ChatGPT response:
```
You can mirror the R grouped bar plot pretty closely with pandas + matplotlib.

Assuming you already created top10 like before:

plot_data.plot(
    kind="bar",
    figsize=(11, 6)
)

plt.title("Genes with Largest Expression Differences Across Treatments")
plt.xlabel("Gene")
plt.ylabel("log2(FPKM + 1)")
plt.xticks(rotation=45, ha="right")
plt.legend([
    "Untreated",
    "Dexamethasone",
    "Albuterol",
    "Dex + Albuterol"
])
plt.tight_layout()
plt.show()
```
