# Project Title: URF Fellowship Project - Overlap in Genetic Findings from GWAS and Organoid scRNAseq
## This repo contains scripts related to the analysis of mapped genes from SCZ GWAS or ASD GWAS and differentially expressed genes from scRNAseq in SCZ organoids.
### Author: Fallon Ratner (f.t.ratner@student.vu.nl)
### Date: 27-02-2024

# 0. Installation of software and packages
### the analysis requires the following
- [R]: version 4.2.3
- R packages (AnnotationDbi; org.Hs.eg.db; dplyr; SingleCellExperiment; edgeR; data.table)
- [Python]: version 3.10.9
- Python packages (scanpy; pandas; numpy; matplotlib; gseapy; os; io; seaborn; matplotlib; matplotlib_venn; biomart)

# 1. Access datasets
- Datasets used are found in the folder datasets

# 2. Convert Ensembl Ids to Gene Symbols
- In the script convert_gene_symbols.R the enbsembl IDs from the Zhong dataset are converted to gene symbols which is used for the following analyses. 

# 3. Compute the Differentially Expressed Genes for the Notaras Organoids.
- In the script notaras_deg.Rmd, the DEGs for SCZ vs Ctrl bulk and single cell are computed.

# 4. Visualize Highly Expressed Genes in Cell Types Associated with GWAS
- In the script gwas_celltype_genesig.ipynb the mostly highly expressed genes from fetal cell types significantly associated with SCZ GWAS are visualized.

# 5. Visualize Genetic Overlap of GWAS and scRNAseq from Organoids
- In  organoid_gwas_genesig.ipynb genetic overlap among the organoid datasets, SCZ GWAS mapped genes, and significantly associated cell types are visualized.

# 6. Visualize Pathways Associated with Genetic Overlap from GWAS and organoid scRNAseq
- In organoid_gwas_pathway.ipynb the common genes from the DEGs in SCZ organoids abd SCZ GWAS are associated with cellular pathways and visualized. 

# 7. Compare Organoids to Fetal Cells
- In organoid_fetalcell.ipynb the DEGs for the organoids are correlated with the fetal cells. Also, the expression of TKT is visualized in fetal cells and the Notaras cell types. 

# 8. Patient Expression of TKT gene
- In patient_gwas_genesig.ipynb the TKT expression for each SCZ organoid patient line is visualized. 

# 8. Compare SCZ GWAS to ASD GWAS
- In organoid_asd_gwas_pathway.ipynb the common genes from the DEGs in SCZ organoids abd SCZ GWAS are associated with cellular pathways and visualized. 

