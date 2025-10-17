install.packages("RSQLite")
library(RSQLite)
install.packages("DBI")
library("DBI")
RS_input <- dbConnect(drv=SQLite(),
                      "C:/Users/juliams/OneDrive - University of Idaho/Classes/WLF5530/SQLite/databases/RS_input.db")

dbExecute(conn = RS_input, statement = "CREATE table raw_filtered_all_10_17_25(
          EGM_Plot varchar(2),
          Treatment varchar(10), 
          Repetition text,
          Collar_Location varchar(10),
          Collar_Rep text,
          Date varchar(10) PRIMARY KEY NOT NULL UNIQUE,
          Msoil varchar(3),
          DC varchar(3),
          SRL_gCO2hr varchar(8),
          SRQ_gCO2hr varchar(8)
          );")
dbListTables(RS_input)
