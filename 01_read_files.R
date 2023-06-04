
######################################################### read files #########################################################


####################### txt ####################### 
table<-read.table("gene_annotations.txt",sep = "\t", header = T) # tab-delimited
head (table)
colnames(table)
dim(table)


####################### fasta ####################### 
library(devtools)
fasta<-as.data.frame(phylotools::read.fasta("~/Desktop/WP5konstanz/nirS_analysis/input_nirS/nirS_prot_ref_250to450.fasta"))


####################### excel #######################
read_excel(",/datasum_nirS project.xlsx")
 