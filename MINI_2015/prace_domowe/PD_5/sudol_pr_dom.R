library("RMySQL")
library("stringi")
sudol_pr_dom=read.csv("D:\\szkola\\R i Big Data\\projekt 1\\dane_portale.csv")

sterownik <- MySQL()
mpolaczenie <- dbConnect(sterownik, 
                         user='pbiecek', password = haslo, dbname='students', 
                         host='beta.icm.edu.pl')
dbWriteTable(con = mpolaczenie, name = "sudol_pr_dom", 
             value = sudol_pr_dom)
dbListTables(mpolaczenie)
dbDisconnect(mpolaczenie)
