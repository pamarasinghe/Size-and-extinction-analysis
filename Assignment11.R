library("dplyr")
install.packages("tidyr")
library("tidyr")

##Exercise1.1
mammal_sizes<-read.csv('mammal_sizes.txt',sep="\t",header = FALSE, stringsAsFactors = FALSE,na.strings = c("-999", "-999.00"))

##Add column names
colnames(mammal_sizes) <- c("continent", "status", "order","family", "genus", "species", "log_mass", "combined_mass","reference")

##Exercise1.2
by_status <- group_by(mammal_sizes,status)
avg_mass_var <- summarize(by_status,avg_mass= mean(na.omit(combined_mass)))
average_mass_extinct <- avg_mass_var[avg_mass_var$status=="extinct",c('avg_mass')]
average_mass_extinct$avg_mass

average_mass_extant <- avg_mass_var[avg_mass_var$status=="extant",c('avg_mass')]
average_mass_extant$avg_mass

##Exercise1.3

by_continent <- group_by(mammal_sizes,continent)
continent <- summarize(by_continent,avg_mass= mean(na.omit(combined_mass)))
print(continent)

filter(by_continent,status=="extinct")
