######################################################### basics #########################################################

####################### check function #######################
?getwd


####################### working directory #######################
setwd("/Users/nanxiang/Desktop/R_basics_temp") #set 
getwd() #check current


####################### install packages ####################### 
install.packages("ggplot2")
# search "phyloseq bioconductor"
install.packages("BiocManager")
BiocManager::install("phyloseq")
# search "tidyr github"
install.packages("devtools")
devtools::install_github("tidyverse/tidyr")


####################### load library ####################### 
library("ggplot2")
library("phyloseq")
library("tidyr")


####################### list files under directory ####################### 
list.files()


####################### check data/file type ####################### 
class(A)
str(A)


####################### add new column ####################### 
df$new =


####################### delete old column #######################
df$old <- NULL # delete column


####################### replace ####################### 
gsub(“a”, “A”, df$column) # rep a by A 
gsub(“.*_H2_.*”, “H2”, df$column)
ifelse(grepl(“H2”, df), “H2”, “F3”)


####################### paste #######################
paste (df$A, df$B, sep = “_”)


####################### file type transformation #######################
as.numeric(df$col)
as.factor(df$col)
factor(df$col, levels = c("1", "2", "3"))


####################### separate file #######################
tidyr::separate(df,colname,into =c("newcol1", "newcol2" , "newcol3"),sep = "_",remove = FALSE,extra = "merge")


####################### re-name col/row #######################
colnames(df)[1]="ED50"
rownames(df)[n]="ED50"
colnames(df)=XXX


####################### remove rows with empty data #######################
df[complete.cases(df), ]


####################### check data distribution ####################### 
hist() #shape 