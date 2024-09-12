# Read both Cars24 and Carwale CSV into R, combine, clean and save as .RDS

library(readr)
cars24 <- read_csv("web_scraping/04_CarDetailsConsolidated/cars24.csv", 
                   na = c("","NA","MISSING","Not Available"), show_col_types = FALSE)
carwale <- read_csv("web_scraping/04_CarDetailsConsolidated/carwale.csv", 
                    na = c("","NA","MISSING","Not Available"), show_col_types = FALSE)

# Remove duplicates
cars24 <- unique(cars24)
carwale <- unique(carwale)


