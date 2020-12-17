

## This will need to be changed to your local settings
setwd("D:/git_R/Daily_Mesonet_Report")

unlink("reports", recursive = TRUE, force = FALSE)
Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")  ## Fixed pandoc errors
rmarkdown::render("Send_Meso.Rmd", "all")
rmarkdown::render("email_current.Rmd", "all")
