Country <- readline("Specify City:")
library(rvest)
Numbeo_URL <- paste0("https://www.numbeo.com/cost-of-living/in/",Country,"?displayCurrency=GBP")
Numbeo_Pull <- html(Numbeo_URL)
Numbeo_Pull %>%
html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "data_wide_table", " " ))]')%>%
    html_table()


