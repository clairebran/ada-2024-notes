# Data Structures and Getting Data into R - Class 4

## read modules 7 & 8 for homework 

## matrices are 2 dimensional structures, arrays are multi-dimensional 

m1 <- matrix(1:30, nrow = 5, ncol = 6) # byrow = FALSE as default
m2 <- matrix(1:30, nrow = 5, ncol = 6, byrow = TRUE) 

a <- array(data = 1:90, dim = c(5,6,3))
dim (a)
class(a)
attributes(a)
str(a)

# Subsetting vectors, matrices, and arrays
## Subsetting references/extracts select elements by using their index positions using bracket notation: []
v <- 1:100
v
  ## pull out numbers in positions 33 to 35
  v[33:35]
  ## pull out numbers in given index positions 
  v[c(1,4,5,56,56)]
  
  v <- c("a","b","c","d")
  v[c(4,1,4,1)]
  v[-c(1)] # pulls out everything BUT what's in 1st position

m <- matrix(data = 1:30, nrow = 5, ncol = 6)
  ## note that naming arguments in code is good practice
m[2:4, 3:4]

a <- array(dim = c(5,6,3), data = 1:90)
a[2:4, 3:4, 2:3]
  ## specifies what to pull out from 1st, 2nd, 3rd dimension

# Lists & Dataframes 
## Lists and dataframes can be used to group a heterogeneous mix of R structures and objects
s <- c("this","is","a","vector","of","strings") # vector of character strings
m <- matrix(data = 1:40, nrow = 5, ncol = 8) #matrix
b <- FALSE #boolean variable
l <- list(s,m,b)
l <- list(string = s, matrix = m, bool = b)
attributes(l) 
length(l)

# Subsetting Lists - using double bracket notation [[]]
l[[2]]
l[[2]][2,6] # pulls out 2nd row and 6th column of matrix contained in list element 2

## Creating data frame by hand 
df <- data.frame(
  firstName = c("Rick", "Negan","Dwight","Maggie","Michonne"),
  community = c("Alexandria","Saviors","Saviors","Hilltop","Alexandria"),
  sex = c("M","M","M","F","F"),
  age = c("42","40","33","28","31")
)

install.packages("readxl")
library(readxl)
f <- file.choose()
df <- read_excel(
  path = f, sheet = 1,
  col_names = TRUE
)

f <- "D:/Applied Data Analysis/Data/CPDS-1960-2014-reduced.csv"
d <- read.table(f, header = TRUE, sep = ",",stringsAsFactors = FALSE)
