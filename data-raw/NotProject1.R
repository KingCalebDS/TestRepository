library(readr)

#load data
data <- read_csv("~/TestingPackage/data-raw/fish_data.csv")
head(data)

#clean data

fishData <- data

#remove ID column
#fishData <- subset(fishData, select = -c(1))

fishData$habitat <- factor(data$habitat)

fishData$color <- factor(data$color)

fishData$Gender <- factor(fishData$Gender, labels = c("Female", "Male"))

colnames(fishData) <- c('id','avg_length', 'avg_weight', 'habitat',
                         'ph_of_water', 'color', 'Gender', 'life_span')

#omit data
fishData <- na.omit(fishData)

usethis::use_data(fishData)
