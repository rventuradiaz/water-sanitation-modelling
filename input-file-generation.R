library(readxl)
dataset <- read_excel("D:/Dropbox/R/projects/water-sanitation-modelling/Data.xls", 
                      sheet = "Data_all_and_calcul (2)", skip = 5)
p2_dataset <- subset(dataset,dataset$phase==2)
p2_dataset$time_hh <- as.numeric(p2_dataset$time_hhmmss- as.POSIXct("1899-12-31 14:51:40"))/60-0.3877778
write.table(p2_dataset[, c("time_hh","doc_mgl")], file = "aquasim-input-file.csv",sep = ",", row.names = FALSE)

