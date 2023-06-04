
######################################################### filter sequences #########################################################
 
install.packages("seqinr")
install.packages("phytools",repos="https://cloud.r-project.org",quiet=TRUE)
install.packages("devtools")
install_github("helixcn/phylotools")


library(devtools)
library(seqinr)
library(dplyr)


fasta<-as.data.frame(phylotools::read.fasta("./nirS_prot_ref_250to450.fasta"))

fasta$genus<-gsub(".*organism=", "", fasta$seq.name)

fasta$genus<-sub(" .*", "", fasta$genus)

fasta$genus= as.factor(fasta$genus)

final=fasta %>% group_by(genus) %>% sample_n(1)

write.fasta(as.list(final$seq.text), final$seq.name, "./filtered_nirS_protein_Reference_238.fasta", open = "w", nbchar = 60, as.string = FALSE)

write.fasta(as.list(fasta$seq.text), fasta$seq.name, "./filtered_nirS_prot_ref.fasta", open = "w", nbchar = 60, as.string = FALSE)