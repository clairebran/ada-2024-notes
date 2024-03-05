install.packages("tidyverse")
library(tidyverse)

f <- file.choose()
f
d <- read_csv(f, col_names = TRUE)

# read.csv function in base R, read_csv function in tidyverse  

sciname <- paste(d$Genus, d$Species, sep = " ") #building scientific name from two columns in data frame, setting separator between genus and species as a space
sciname <- paste0(d$Genus, " ", d$Species) #another method of doing the same thing 
sciname <- toupper(sciname) #makes everything in sciname upper case 

unique(d$Genus) #pulls out all of the unique genera in data set 
unique(d[["Genus"]]) #another method of doing the same thing 
var <- "Genus"
unique(d[[var]])

class(d)
glimpse(d) #gives structure of data frame 
str(d) #same info, not as good as tidyverse version 
head(d) #first 6 rows of data frame
tail(d) #last 6 rows of data frame
head(d, 30) #first 30 rows 

gs <- d$MeanGroupSize
gs + 1 #adds 1 to each number in vector 
gs + c(1,2)
mean(gs, na.rm = TRUE)

#Read in data, extract female mean body mass and brain size, and make a bivariate plot of the relationship between those variables on untransformed and log scale

f <- "data-wrangling.csv"

d <- read_csv(f, col_names = TRUE)

bm <- d$Body_mass_female_mean
bs <- d$Brain_Size_Species_Mean

plot(bm, bs)
