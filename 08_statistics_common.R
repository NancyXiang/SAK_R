
######################################################### statistics R #########################################################

####################### check for data distribution ####################### 
hist(sqrt(df$col)) #Gaussian shape?


####################### check for normality ####################### 
shapiro.test(sqrt(df$col)) #normality?


####################### ANOVA ####################### 
anova_results=aov(sqrt_counts ~ Strain+Temperature+Strain:Treatment, data = df)
summary(anova_results)


####################### T-test ####################### 
h2_native=subset(df, Strain == "H2" & Treatment== "native" & !is.na(df$sqrt_counts))
pairwise.t.test(df$sqrt_counts,df$Temperature, p.adj = "fdr")


####################### calculation ####################### 
df.mean<-df %>%
  group_by(fact1, fact2) %>%
  summarise(mean=mean(colname), sd=sd(colname)) %>%
  unite(Group, c(colname), sep = "-", remove = FALSE)
df_mean$group=paste(df_mean$colname, df_mean$colname)