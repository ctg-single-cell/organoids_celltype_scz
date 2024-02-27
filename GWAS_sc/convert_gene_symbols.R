# Convert Ensembl IDs to Gene names

library(AnnotationDbi)
library(org.Hs.eg.db)
library(dplyr)

#select relevant working directory
setwd("C:/Users/fallo/OneDrive/Documents/URF_2023/FUMA_Results")

#Read in the file with cell types, genes (ENSEMBL IDs), and gene expression
expression_data = read.table('GSE104276_Human_Prefrontal_cortex_per_ages.txt', sep='\t', header=TRUE)

ensembl_ids <- c(expression_data$GENE)

# Convert Ensembl IDs to Symbol and create a data frame
symbols <- data.frame(ENSEMBL = ensembl_ids, SYMBOL = mapIds(org.Hs.eg.db, keys = ensembl_ids, column = "SYMBOL", keytype = "ENSEMBL"))

# Merge DataFrame with gene names
exp_with_names <- left_join(expression_data, symbols, by = c("GENE"= "ENSEMBL"))

#Save csv
write.csv(exp_with_names,"zhong_expression_gene_symbols.csv")

#Subset dataset for sig cell types
sig_cell_types = c('GW26_GABAergic_neurons', 'GW23_GABAergic_neurons', 'GW26_Astrocytes','GW26_Neurons', 'GW16_Neurons','GW16_GABAergic_neurons', 'GW10_Neurons')
selected_columns <- c("SYMBOL", sig_cell_types)
subset_exp_data <- exp_with_names[selected_columns]
#Save csv
write.csv(subset_exp_data,"zhong_exp_sig_cells.csv")


