
######################################################### FunGene database preparation #########################################################

library(seqinr)

library(phylotools)

fasta=phylotools::read.fasta("./fungene_repository_nirS_prot_ref_25330.fasta")

acc_num=read.table("./fungene_nirS_NCBI_accession_tax.txt", sep = "\t")

acc_num$V3=gsub(",", ";", acc_num$V3) # replace , by ; 

fasta$seq.name=gsub(" .*", "", fasta$seq.name) # .* means things after space/ # remove thing-after-space 

fasta$seq.name=acc_num$V3[match(fasta$seq.name, acc_num$V1)]

write.fasta(as.list(fasta$seq.text), fasta$seq.name, "dada2_nirS_prot_ref_25330.fasta", open = "w", nbchar = 60, as.string = FALSE)
