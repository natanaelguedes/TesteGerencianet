install.packages("dplyr")
install.packages("sqldf")
library(dplyr)
library(sqldf)
install.packages("xlsx")
library("xlsx")

getwd()

library(RSQLite)

con <- dbConnect(RSQLite::SQLite(), dbname = "desafio-tecnico.db")
con
dbListTables(con)
dbListTables(con)
dbReadTable(con)
dbListObjects(con)
dbListTables(conn)
dbListFields(con, "charges")

library(sqldf)

library(dplyr)
db <- src_sqlite("desafio-tecnico.db")
src_tbls(db)

unpaid = 1
.paid =0

dbListTables(con) 


saida=dbGetQuery(con, "SELECT    P.id,    P.account_number,     P.status FROM    charges  P WHERE    P.id IN
    (        SELECT    C.id        FROM            accounts   C        WHERE
            P.id = C.id
    );")

.saida

saida$fraud = saida$fraud[saida$account_number == "747007 " ] <- 1
saida$fraud[saida$status] <- 
  s





saida$fraud 








data1 <- read.csv("D://sqlite//mycsv.csv", sep = ";", header=TRUE, stringsAsFactors=FALSE)
data1
 

saida$fraud[saida$status== "unpaid"] <- 1

saida$fraud[saida$status== "paid"] <- 0

write.csv(saida,"D://sqlite//ResultadoCorretocsv.csv", row.names = FALSE)

