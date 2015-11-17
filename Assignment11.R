library("dplyr")
install.packages("tidyr")
library("tidyr")

##Exercise1.1
mammal_sizes<-read.csv('mammal_sizes.txt',sep="\t",header = FALSE, stringsAsFactors = FALSE,na.strings = c("-999", "-999.00"))

##Add column names
colnames(mammal_sizes) <- c("continent", "status", "order","family", "genus", "species", "log_mass", "combined_mass","reference")

