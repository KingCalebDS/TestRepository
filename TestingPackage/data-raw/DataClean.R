#load data
data <- read_csv("~/TestingPackage/data-raw/fish_data.csv")
head(data)

#clean data
cleanData <- data
cleanData$habitat <- factor(data$habitat)

cleanData$color <- factor(data$color)

cleanData$Gender <- factor(cleanData$Gender, labels = c("Female", "Male"))

colnames(cleanData) <- c('id', 'avg_length', 'avg_weight', 'habitat',
                         'ph_of_water', 'color', 'Gender', 'life_span')

#omit data
cleanData <- na.omit(cleanData)

usethis::use_data(cleanData)
