less55 <- matrix(c(8,98,106,5,115,120),
                 nrow = 3, ncol = 2, 
                 dimnames = list(c("Deaths","Survivors","Total"),
                             c("TOLB","Placebo")))
less55
help(matrix)
more55 <- matrix(c(22,76,98,16,69,85),
                 nrow = 3, ncol = 2, 
                 dimnames = list(c("Deaths","Survivors","Total"),
                                 c("TOLB","Placebo")))
more55
clinicalArray <- array(data = c(8,98,5,115,22,76,16,69), 
                       dim = c(2,2,2), 
                       dimnames = list(c("deaths","survivors"),c("TOLB","Placebo"),c("Younger than 55","55 or older")))

clinicalArray
help(array)
sum(clinicalArray[1,,])
sum(clinicalArray[2,,])
sum(clinicalArray[,1,])
sum(clinicalArray[,2,])
print(clinicalArray[2,2,2])
matrix(clinicalArray)

iris
data.iris
data(iris)
data(cars)
iris
type(iris)
typeof(iris)
dim(iris)

dimnames(iris[1,])
help(dimnames)
head(iris, n = 10)
help(head)
tail(iris, n = 10)
subset(iris[,-2],subset = TRUE)
iris
help(subset)
summary(iris)
tibble(iris)
help(tibble)
tibble(iris, .rows = 5)
coerce(iris,from = data.frame, to = tibble)
help(coerce)
iris <- setAs(from = data.frame, to = tibble)

