-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

library(DBI)
db <- RSQLite::datasetsDb()
dbListTables(db)
dbReadTable(db, "CO2")
dbGetQuery(db, "SELECT * FROM CO2 WHERE conc < 100")
dbDisconnect(db)