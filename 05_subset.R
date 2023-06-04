
######################################################### subset #########################################################

####################### by position ####################### 
a[1]
a[c(1,2)]
df[1,2]
df[1,]


####################### by colname #######################
colnames(df)
df[c(1,2), "a"] # row 1 & 2 in column "a"


####################### by conditional statement ####################### 
a[a>=2]
a[a!=2]
a[!a>=2]
df[df$Genus == “A”,] #by brackets


####################### by "NA" ####################### 
table_filtered<-table[!is.na(table$KO_ID), ]
ab_nirS=ab_nirS %>% drop_na()


####################### by subset function #######################
subset(df, Genus == “XXX”)


####################### by filter function #######################
df %>% filter(Genus == “XXX”)


####################### by grepl #######################
df[grepl("XXX", df$Genus), ]


####################### by %in% #######################
# subset by same names
filtered_asv=subset(pre_asv, pre_asv$Old_ID %in% nirS_tax_sum$seq.ID)
#subset by defined conditions
levels(as.factor(bp_fg$V1))
bp_fg_subset = bp_fg %>% group_by(V1) %>% top_n(1, V3)