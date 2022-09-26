# THE WHOLE SHABANG

# LECTURE 2

  # DEMO 1
TestScores <- c(8,7,8,10,5)
mean(TestScores)
median(TestScores)
TestScores <-
  c("Bob" = 8, "Alice" = 7, "Alex" = 8, "Juan" = 10, "Amy" = 5)
print(TestScores)

  # DEMO 2
# Mileage at fill-up 1, 2, and 3
MILEAGE <- c(65311,65624,65908)
# Use the diff function to show the number of miles between fill--up
x <- diff(MILEAGE)
x
# What happens when we use c() function to combine objescts of different type?
# R finds a common mode . . . this is called COERCION
weirdvector <- c("dog",1,2,3,TRUE)
mean(weirdvector)
mode(weirdvector)

# construct a sequence starting at 1 ending at 10 by increments of 0.5
seq(from = 1, to = 10, by = 0.5)
seq(1,10,0.5)
seq(1,10,length = 5)

  # DEMO 3
series <- 1:10
series
3:27
foo <- 7
3:foo

# creating a vector using the repetition function
rep(3,times=5)
rep(x=3, times=5)
rep(1:4,2)
rep(1:4, each = 5)
rep(1:4, each = 2, length = 4) # cuts sequence short


# LECTURE 3

"DESCRIPTIVE STATISTICS - doesn't allow to make conclusions beyond the actual values
that we have.

basic summary statistics
  measures of center: mean, median, mode
  measures of spread: range, quartiles, IQR
  sample variance and sample standard deviation
  
  maximum: max()
  minimum: min()
  
  SAMPLE MEAN: mean()
  MEDIAN: median()
  MODE (must install another package statip: mfv()
    most frequent value
"

# LECTURE 4

"cont. exploring quantitative data set
previously looked at measures of center
mfv() for most frequent value or mode
now will be looking at measures of spread"

# range(wk3)
  # 9 70
  # in R, the range is returned as the max and min value

# QUARTILES or QUANTILES - Q1, Q2, Q3
"
  divides data into 4 parts
  median is also the 2nd quartile
  use sort()
  doesn't matter if distribution is skewed
"

# DISTRIBUTIONS: symmetric, skewed, bimodal (2 modes)
wk3 <- c(9,9,22,32,33,39,42,49,52,58,70)
quantile(wk3)
# sometimes useful to look at the INTERQUARTILE RANGE (Q3-Q1)
# Q2 and Q3 may be a mean avg of 2 middle values
IQR(wk3)
sort(wk3)
median(wk3)

# SAMPLE STANDARD DEVIATION
?sd()
sd(wk3)
# SAMPLE VARIANCE
var()
var(wk3)
sd(c(1,2,3,5))
typeof(typeof(median(wk3)))
typeof("hi")
# PROPERTIES OF THE SD
"
-1: s measures spread about the mean
-2: s=0 only when there is no spread. This happens when all the
    observations have the same value
-3: as the observations become more spread out about the mean, s
    gets larger
-4: s has the same units of measurement as the original observations
-5: s is not resistant. Strong skewness or a few outliers can greatly increase it
"
# SUMMARY STATISTICS IN R
# shows max, Q1, Q2, mean, Q3, and min
summary(wk3)

# FIVE NUMBER SUMMARY, doesn't include mean
# BOXPLOT or box and whisker plot
"
  gives a graphical representation of the values
  left edge of box = Q1, right edge of box = Q3, middle = median (Q2)
  left end of line = min, right end of line = max
"
boxplot(wk3)
boxplot(state.area)  # too basic
boxplot(state.area, border = "pink", col = "red",
        main = "BOXPLOT OF STATE AREAS (sq. miles)")

  # DEMO 1
View(mtcars)
"
  extracted from 1974 Motor Trend US mag, and
  comprises fuel consumption and 10 aspects of 
  automobile design and performance for
  32 automobiles (1973-74 models)
"

# Create side-by-side boxplots to compare vehicle weight for number of cylinders
# ~(tilda) used to separate the left and right hand sides in a model formula
# in this case, weight and cylinders
  # data = data we're looking at
  # main = toupper is used to specify a heading in upper-case
  # xlab = label for the x axis
  # ylab = label for the y axis
  # col  = choose color
  # wt~cyl
  # wt~grs
boxplot(wt~cyl,data = mtcars,
        main = toupper("compare vehicle weight to number of cylinders"),
        xlab = "No. of Cylinders", ylab = "Weight", col = "pink")

"
DESCRIPTIVE STATISTICS
  use data from a sample to answer questions about a population
  summarize and describe data (?)

2 basic divisions of statistics are 
  inferential and descriptive

CHARTING CATEGORICAL DATA
  bar graphs, pie charts
  bar graphs are categorical and its useful to organize them with rank
"
# define a vector with 4 values:
x<-c(1,4,6,10)
# graph x
barplot(x)

barplot(H,xlab,ylab,main,names.arg,border)
"
  H is a vector (or matrix) containing numeric vcalues in bar chart
  xlab - label for x axis
  ylab - label for y axis
  main is the title of the bar chart
  names.arg are the names appearing under each bar
  col is used to assign colors
"

dogs<-c(1,4,6,10)
breed_name<- c("Alsatian","Collie","Pug","Beagle")
barplot(dogs, names.arg = breed_name, xlab="BREED",
        ylab="No. of Dogs",col = "GREen",
        main = "DOG CHART", border = "BlaCK")

# PIE CHART
pie()  # must take positive numbers
labels <- c("Comedy","Action","Romance","Drama","SciFi")
pie(x,labels,radius = 0.8,main = "MOVIES",col = rainbow(length(x)),clockwise = T)  
# must choose a color palette, and must have labels
# rainbow(length(x)) gives the same number of colors as the number of elements in the vector

#options(scipen=99) removes sci notation

# LECTURE 5

"
MATTRICES are R objects in which the elements are arragned in a 2D rectangular layout
  contain elements of the same atomic types
  we'll be looking at numerical and logical values, but not mixed values

matrix(data, nrow, ncol, byrow, dimnames)
  data = input vector
  nrow = no. of rows
  ncol = no. of columns
  byrow = logical clue
    by default: false
  dimnames = names assigned to the rows and columns ('dimension names')
    must be made separately
dimnames = list(char_vector_rownames, char_vector_colnames)
"

# DEMO 1
# EXAMPLE generate 5x4 numeric matrix, select 3rd column, then select rows 2,3,4 of columns 1,2,3
y <- matrix(1:20, nrow = 5, ncol = 4, byrow = F)
y
y[,3]       # 3rd column of matrix, use [] to select elements of vector
            # [,3] is the name of the 3rd column of the matrix
y[2:4,1:3]  # rows 2,3,4 of columns 1,2,3
dim(y)

# DEMO 2
"
R Matrices for Statistical Analysis
Construct a matrix using [hair color:eye color] data
"
HEC <- c(32,11,10,3,53,50,25,15,3,30,5,8)
# construct the matrix
HairEyeColor <- matrix(HEC, nrow = 3, ncol = 4, byrow = TRUE)

# add row names and column names
rnames<- c("Black Hair","Brown Hair","Blond Hair")
cnames<- c("Brown Eyes","Blue Eyes","Hazel Eyes","Green Eyes")
HairEyeColor
HairEyeColor <- matrix(HEC, nrow = 3, ncol = 4, byrow = T, dimnames = list(rnames,cnames))
HairEyeColor

# DEMO 3: modifying a matrix
# use the rbind and cbind functions to create a matrix from 3 vectors
a <- c(1,2,4,5,6)
b <- c(3,2,4,1,9)
d <- c(7,5,5,6,4)
CC <- cbind(a,b,d)
CC
is.matrix(CC)  #TRUE
CR <- rbind(a,b,d)
CR
is.matrix(CR)

# REMOVING MATRIX ELEMENTS
# Remove column 'a' from matrix names 'CC'
RC <- subset(CC, select = -a)
RC

# OVERWRITE MATRIX ELEMENTS
# Replace the 1st row of 'RC' w/ the sequence 1:2
RC[1,] <- 1:2
RC

# ARRAYS are matrices in higher dimensions
'
ARRAY of 2 or more matrices
  Arrays take vectors as input
  Created using the array() function
  DON\'T NEED TO KNOW THE SYNTAX FOR MIDTERMS/QUIZZES
    Asked to create an array, or given an example and know if they create one
'    
# DEMO 4: ARRAYS
array(data = NA, dim = length(data),dimnames = NULL)
vector1<- c(5,9,3)
vector2<- c(10:15)
  # vector1 and vector2 have to be multiples of each other
result <- array(c(vector1,vector2), dim = c(3,3,2))
print(result)
# add names
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1,vector2),
                dim = c(3,3,2),
                dimnames = list(row.names,column.names,matrix.names))
result
# CALCULATION ACROSS ARRAYS
apply(x, margin, FUN)

'
x is an array
MARGIN: a vector giving the subscripts over which the function will be applied
  For a matrix 1 indicates rows, 2 indicates columns, c(1,2) indicates rows and columns
FUN is the function to applied across the elements of the array
Where x has names dimnames ....
'

aaa <- c(2,3,4,6)  # create vector
bbb <- c(5,6,10,12,45) 
new.array <- array(c(aaa,bbb), dim = c(3,3,2))
print(new.array)

# sum the rows, sum the columns
result <- apply(new.array,c(1), sum)
result

# LOGICAL VALUES
'
logical (T,F)
  Checks whether a relationship is true
  Subsetting and extracting logiccal values
'

2<4
5==6

# DEMO 5 LOGICAL VALUES
data(state)
state.area
# How many US states have an area less than 10 000
# or greater than 100 000 sq miles?
SmallState <- state.area <10000
class(SmallState)
SmallState

LargeState <- state.area >100000
LargeState
sum(LargeState)

SmallState | LargeState
sum(SmallState | LargeState)

sum(SmallState & LargeState)


# LECTURE 6
"
FACTORS are categorical variables
  Can be ordered or unordered
  NOMINAL* - only categories
  ORDINAL*- categories w/ some order
  INTERVAL - differences but no natural starting point
  RATIO - differences & a natural starting point

NOMINAL LEVEL char'ed by data that consist of names, labels, or categs only, and the data
can't be arranged in an ordering scene
ORDINAL LEVEL involves data that can be arranged in some order but diffs btwn data values
either can\'t be determined or are meaningless
factor() tells R that data is nominal
"
# DEMO 1
# NOMINAL DATA
# create a factor w/ elements: male, female, female, male
gender <- factor(c("male","female","female","male"))
levels(gender)
nlevels(gender)
length(levels(gender))
plot(gender)
gender
typeof(gender)
gender
# Use ordered() or function () with ordered = T
table(gender)

# ORDINAL DATA
Class_grades <- ordered(c("Pass","Fail"))  # create an ordered factor for ordinal data
Class_grades

# list
list(7,8,17)  # create a list of the scalars 7,8,17
a <- list(gender,9,"PSTAT")  # create a list containing a factor, a scalar, and character string
a
is.list(a)
length(list(gender,9,"PSTAT"))
length(list(a))
length(a)
a[2]
a[2] + 3
a[[2]] + 3
typeof(a[2])
typeof(a[[2]])
a <- paste(a[[1]],"other")
a
a <-paste(a[2], "other")
a
a


# STRING
# these strings are predefined constants: month.abb, month.name, letters, LETTERS, pi
bar <- "How much wood could a woodchuck chuck"
sub(patter="chuck",replacement = "hurl",x=bar)
sub("chuck","hurl",bar)
gsub("chuck","hurl",bar)

# DATA FRAMES are more general than a matrix, in that different cols can have different
# types of data

a <- c(2,3,4,6)  # numerical vector
b <- c("red","white","red",NA)  # character vector
c <- c(T,F,T,F)  # logical vector
my_row_names <- c("one","two","three","four")
data.frame(a,
           b,
           c,
           row.names = (my_row_names))  # construct a data frame w/ col names added


# LECTURE 7 
data("iris")  # data set loaded?
is.data.frame(((iris)))
class(iris)
dim(iris)
View(iris)
ls(iris)
names(iris)

head(iris,n=5)  # print the first 5 rows of data
tail(iris, n= 7)  # print the last 7 rows of data
# Remove petal width from iris
my_iris_data1 <- subset(iris, select = -Petal.Width) 
my_iris_data1
head(my_iris_data1,n=5)

# Remove petal width and species from iris
my_iris_data2 <- subset(iris, select = -c(Petal.Width,Species))
my_iris_data2
head(my_iris_data2)
head(iris)

# Keep only petal length and species
my_iris_data3 <- subset(iris, select = c(Petal.Length,Species))
my_iris_data3
head(my_iris_data3,n=5)

# Removing (or keeping) many columns
my_iris_data4 <- subset(iris, select = -c(Sepal.Width:Species))
my_iris_data4
head(my_iris_data4)

summary(iris)  #numeric summary

# histogram of petal length
hist(iris$Petal.Length)
mean(iris$Petal.Length)
median(iris$Petal.Length)
sd(iris$Petal.Length)

help(sd)

# create side-by-side boxplots comparing petal length for each species
boxplot(Petal.Length~Species, data = iris)
boxplot(Petal.Length~Species, data = iris,
        main = toupper("Petal.Length~ to Species"),
        xlab = "Species", ylab = "Petal.Length", col = "dark green")

# install TIBBLE
# tibbles show only the 1st 10 rows
# data frames show all rows
# tibbles have a feature that's useful in R programming
is_tibble(iris)
docs  # coerce dataframe to tibble

# RESHAPING, COMBINE AND COERCE
FirstName <- c("Ann", "Paul","Bob")
LastName <- c("Smith", "Liu", "Lopez")
Department <- c("Math","Physics","Biology")

# combine
Faculty_Profile <- cbind(FirstName,LastName,Department)
Faculty_Profile
class(Faculty_Profile)

# Create a data frame w/ similar columns
# Notice the use of the = sign
New_Faculty_Profile <- data.frame(FirstName = c("John","Sarah","Jane"),
                                  LastName = c("Day", "Brown", "Green"),
                                  Department = c("History","English","PSTAT"))
New_Faculty_Profile
All_Faculty_Profile <-rbind(Faculty_Profile,New_Faculty_Profile)
All_Faculty_Profile
class(All_Faculty_Profile)
as_tibble(All_Faculty_Profile)

# export All_Faculty_Profile to your working directory as a csv file
write.csv(All_Faculty_Profile, "All_Faculty_Profile2.csv")
help(write.csv)

# import file
read.csv("All_Faculty_Profile2.csv")
# MISSING VALUES in R are denoted by NA
Missing_Values <- data.frame(x = c("PSTAT",2,TRUE), y = c(5,NA,8))
Missing_Values
is.data.frame(Missing_Values)
na.omit(Missing_Values)  # takes the entire record off


# ARRAYS in practice clinical trial data
tdat <- c(8,98,5,115,22,76,16,69)  # tolbutamine data
tdat <- array(tdat, c(2,2,2))
tdat

# row names, column names, and matrix names
dimnames(tdat) <- list(Outcome = c('Deaths','Survivors'),
                       Treatment = c('Tolbutamine','Placebo'))
dimnames(tdat)
tdat

# PROBABILITIES
"
RANDOM EXPERIMENT: one in which we know all the possible outcomes in advance
SAMPLE SPACE: the set of all these possible outcomes
EVENT: subset of sample space
e.g. rolling a fair 6-sided die once
  Event A = score is 4 = {4}
  Event B = score is odd = {1,3,5}
  Event C = score is greater than 5 = {6}
If the # of outcomes is finite and they're all equally likely to occur...
P(A) = (no. of favorable outcomes)/(no. of possible outcomes)

Probability of an event that's CERTAIN to occur is 1

Probability that one event is the COMPLEMENT of another event if the 2 events
don't contain any of the same outcomes AND together cover the whole sample space
for an event A, the complement is A^c
  e.g. flipping a fair coin where Event A = coin lands on heads and Event B = coin lands on tails
  P(A) = 1/2 | P(B) = 1/2 | P(A) + P(A^c) = 1
  P(AUA^c) = 1


RULE 1: P(A) is a number between 0 and 1

RULE 2: in a random experiment, the probabilities of all the outcomes added together is 1
  
  CONDITIONAL PROBABILITY: the probability of an event occuring given that another event has
  already occured
    where P(other event) > 0
"

IQ <- data.frame(Level = c("High", "Normal","Total"),
                 Gene_Present = c(33,39,72),
                 Gene_Absent = c(19,11,30),
                 Total = c(52,50,102))
IQ

"
probability that a child has high IQ P(B), given that the child has the gene P(A)
  P(B|A) = P(B & A)/P(A) = (33/102) / (72/102) = 33/72
probability that the child doesn't have the gene
  P(A) = 30/102
probability that child doesn't have the gene given that the child has normal IQ
  P(B|A) = P(B & A)/P(A) = (11/102) / (50/102)

# MUTUALLY EXCLUSIVE or DISJOINT if 2 events A & B cannot occur together
'
  e.g. roll a fair 6-sided die once | rolling 1 and rolling 2 are mutually exclusive events

RULE 3: P(A or B) = P(A U B) = P(A) + P(B) | P(A and B) =  P(A n B) = 0

RULE 4: P(A) + P(A^c) = 1 | an event must either occur or not occur

RULE 5 (for overlapping events): P(A U B) = P(A) + P(B) - P(A n B)
  e.g. in a group of 20 adults, 4/7 women wear spectacles, 2/13 men wear spectacles
  what is the probability that person chosen at random from group is a woman or someone who wears spectacles?
     
    P(A) = 7/20
    P(B) = 6/20
    P(A n B) = 4/20
    P(A U B) = 9/20
    
2 events are INDEPENDENT EVENTS if the occurence of one doesn't affect the probability
of the occurence of the other event
  e.g. toss coin and roll a die | P(heads and roll 5)?
    (1/2)*(1/6) = 1/12
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    1
    0
  e.g. choose card from a deck of 52, replace it and choose another
    P(first card is 3 and second card is ace)?
    (4/52) * (4/52)
  e.g. roll a 6-sided die twice | P(4 on 1st roll and 1 on 2nd)
    (1/6)*(1/6) = 1/36

RULE 6 (for independent events): P(A n B) = P(A) * P(B)

MUTUALLY EXCLUSIVE vs. INDEPENDENT EVENTS
  if A and B are mutually exclusive, then if A occurs, B cannot occur
    so P(B|A) = 0. Hence they are not independent
  if A and B are independent, then occurence of A doesn't prevent the occurence of B
  so P(B|A) != 0. Hence they are not mutually exclusive
  
DISCRETE RANDOM VARIABLES arise from counting
  e.g. how many fleas are on a prairie dog colony?
RANDOM VARIABLES are either discrete or continuous
DISCRETE if you can list/count all the possible outcomes
  e.g. tossing a coin twice | no. of tails obtained?
    X = 'no. of tails'
DISCRETE PROBABILITY DISTRIBUTION consists of all the values a random variable can assume
and the corresponding probabilities of the values
The probabilities are determined theoretically or by observation
  e.g. toss coin twice and record no. of heads | X = 'no. of heads' = 0,1,2
"

no_heads <- matrix(c(0,1,1,2,0.25,0.25,0.25,0.25),
                   nrow = 2, ncol = 4,
                   dimnames = list(c("NO. HEADS","PROB"),c("TT","HT","TH","HH")), byrow = TRUE)
no_heads                       
# P(X=0,1,2) = 1
# P(X=0) = 1/4
# P(X=1) = 2/4
# P(X=2) = 1/4

# LECTURE 9

tdat <- c(8,98,5,115,22,76,16,69)
is.array(tdat)
tdat <- array(tdat, c(2,2,2))  # creates an array with 2 2x2 matrices, fills by col
dimnames(tdat) <- list(Outcome = c('Deaths','Survivors'),
                       Treatment = c('Tulbutamide','Placebo'),
                       Age_Group = c('Age<55','Age>=55'))
tdat  # row names = "outcome", col names = "Treatment", matrix name = "Age Group"
is.array(tdat)
total_rows <- apply(tdat,1,sum)  # sum of rows from both matrices
total_rows
total_cols <- apply(tdat,2,sum)
total_cols
print(tdat[2,2,2])  # row 2 col 2 matrix 2
print(tdat[2,1,2])
print(tdat["Deaths",1,2]) # row 1 ("Deaths") col 2 matrix 2
tdat2 <- tdat["Deaths",1,2]
tdat2
total_cols_rows <- apply(tdat, c(1,2), sum)  # merges matrix 1 and 2 a sum
total_cols_rows  
class(total_cols_rows)

"
a distribution completely describes random variable
probability mass function (pmf) assigns specific probabilities to specific values
for a discrete random variable
If X is a discrete random variable, then P(X = x) = prob that the value of X is x

  e.g. pmf for the no. of children in family in SmallTown
  Where x = no. of dependent children in household
"

x <- c(0.07,0.2,0.38,NA,0.13)
SmallTown <- matrix(x, nrow = 1)
dimnames(SmallTown) <- list(c("P(X=x)"),
                            x = c(0,1,2,3,4))
SmallTown
# NA = 1 - (0.07 + 0.20 + 0.338 + 0.13)

# Cumulative probability distribution of SmallTown

CX <- c(0.07,0.27,0.65,0.87,1.00)
CSmallTown <- matrix(CX, nrow = 1)
dimnames(CSmallTown) <- dimnames(SmallTown)
CSmallTown

outcomes <- c(0,1,2,3,4)
probabilities <- c(0.07,0.20,0.38,0.22,0.13)
probabilities
barplot(probabilities, ylim = c(0,0.38), names.arg = outcomes,
        space = 0, xlab = "Number of Children per Household",
        ylab = "Probability")
?plot.new()
?cumsum()
??names.arg
help(barplot)

cumulative <- cumsum(probabilities)
cumulative  # returns a vector whose elements are the cumulative sums
barplot(cumulative, names.arg = outcomes,
        space = 0, xlab = "Number of Children per Household",
        ylab = "Cumulative Probability")
outcomes2 <- c(0,1,2,3,4)
outcomes2
probabilities2 <- c(0.07,0.20,0.38,NA,0.13)
probabilities2
cumulative2 <- cumsum(probabilities2)
cumulative2

probabilities3 <- sum(c(0.07,0.20,0.38,NA,0.13))
probabilities3
sum(probabilities3,na.rm = T)
1 - sum(probabilities3,na.rm = T)

"
MEAN and EXPECTED VALUE | POPULATION MEAN vs SAMPLE MEAN
EXPECTED VALUE: mean of a random variable, denoted by E[X]
  E[X] = sum of each discrete random variable * its probability
REALIZATIONS: observations of a random variable
  expected value reps the avg of a large no. of independent realizations of X
"

probabilities4 <- c(0.07,0.20,0.38,0.22,0.13)
outcomes2
Mean_discrete_dist <- sum(outcomes2*probabilities4)
Mean_discrete_dist
sum(outcomes2)
sum(probabilities4)

# STANDARD DEVIATION and VARIANCE measures the SPREAD of a set of values
"
  VAR[X] = sum((X-E[X])^2)(P(X=x)))
  SD is the square root of the variance
"
VAR_discrete_dist <- sum((outcomes2 - Mean_discrete_dist)^2 * probabilities4)
VAR_discrete_dist
Standard_Deviation <- sqrt(VAR_discrete_dist)
Standard_Deviation  # find variance first then square root

"
Suppose you want to select 3 books from 5 different titles
  order doesn't matter (ABC is the same as BCA)
Books are labeled ABCDE - possibilities: ABC ABD ABE ACD ACE ADE BCD BCE BDE CDE
  n!/((n-x)!x!) | 5!/((5-3)!3!) = 10 | 10 distinct COMBINATIONS of 3 items chosen from 5

BINOMIAL DISTRIBUTION
  e.g. a genticist samples 10 ppl and counts the number who have a gene linked to Alzheimer's
  disease
  e.g. it's estimated that 35% of all voters support Prop A. If a random sample of 10 voters is polled,
  what is the probability that exactly 3 of them support the proposition?
  e.g. probability that a student is accepted to a prestigious college is 0.3. If 5 students from the
  same school apply, what is the probability that at most 2 are accepted?
 
CONDITIONS OF A BINOMIAL EXPERIMENT
  (1) fixed number of n trials
  (2) each trial is independent
  (3) each trial has the same 2 possible outcomes (success or failure)
  (4) for each trial, the probability of a success is the same and is denoted by p.
      Correspondingly, the probability of a  failure is dentoed by 1-p.

  The parameters X, n, and p fully describe the Binomial distribution
    Denoted by X~BIN(n,p) where n = no. of trials and p = probability of success
    mean = np | variance = np(1-p) | sd = sqrt(np(1-p))
    e.g. if 80% of certain smart phones will function successfully through the 90-day warranty period,
          find the mean and sd of the no. of these smart phones, among 10 randomly selected, which will
          function successfully through the 90-day warranty period.
          
          n = 10
          p = 0.8
          mean = np = 10 * 0.8 = 8
          variance = np(1-p) = 8(1 - 0.8) = 1.6
          sd = sqrt(1.6) = 1.2645
          
    e.g. probability of getting 2 tails when flipping the coint twice
    x = 1, prob of getting 1 tail in 2 flips
"
?dbinom
dbinom(x=2, size = 2, prob = 0.5)


# LECTURE 10

# Flip coin 3 times, probability of getting 3 tails?
dbinom(x = 3, size = 3, prob = 0.5)

# Flip a coin 3 times. Construct the pmf for 'tails'
prob_tails <- dbinom(0:3,size = 3,prob = 1/2)  # returns 4 values for x = 0:3
prob_tails

# Flip a coin 10 times. Probability of obtaining 4 or fewer heads?
# You can either dbinom() with sum()
dbinom(0:4, size = 10, prob = 1/2)
sum(dbinom(0:4,size = 10, prob = 1/2))
# Or you can use pbinom() which finds the cumulative probability
pbinom(4, size = 10, prob = 1/2)

# Probability of obtaining between 5 and 8 heads, inclusive
sum(dbinom(5:8,size = 10,prob = 1/2))
pbinom(8,size = 10,prob = 1/2)-pbinom(4,size = 10,prob = 1/2)

# Probability that the number of heads is greater than 7
sum(dbinom(8:10,size = 10,prob = 1/2))
1 - pbinom(7,size = 10,prob = 1/2)

# A manufacture procses creates 3.4% defective parts. A sample of 10
# parts from the production process is selected. What is the probability
# that the sample contains exactly 3 defective parts?
# p = 0.034, n = 10, P(X=3)?
dbinom(x=3, size = 10, prob = 0.034)

# CONTINUOUS RANDOM VARIABLES
"
  Continuous random variable X is specified by its probability desnsity funciton (pdf)
  Probabilities are given by the area under the graph between specified values
  This graph is called a DENSITY CURVE
  The total area under a density curve is alwasy equal to 1
"
# UNIFORM DISTRIBUTION 
"
  X ~ UNIF(a,b)
  Density function:
    1/(b-a) if a <= x <= b
    0 otherwise
  where a and b are the parameters of the distribution,
  defining the limits of the possible values a and b can take
  mean of continuous random variable X is (a+b)/2
  e.g. time spent waiting for a bus
    bus arrives at a stop every 10 minutes. a student arrives at stop any time.
    how long will they have to wait?
    X = Waiting time until next bus arrives
    X is a cont. random variable, measured from 0-10 minutes
    height is 0.10 so that the total area under the curve is (0.10)(10) = 1
      probability that X is between 5 and 7? (base)(height) = (2)(0.1) =  0.2
      
"
