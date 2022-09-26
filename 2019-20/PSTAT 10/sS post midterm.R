# final will have more database questions than R, but is still cumulative
# CONTROL STRUCTURE and WRITING FUNCTIONS
# %% modulus operand
x == y  # "x is equal to y"
x != y  # "x is not equal to y"
x > y  # "x is greater than y"
x < y  # "x is less than y"
x <= y  # "x is less than or equal to y"
x >= y  # "x is greater than or equal to y"
#  combine these using the & or && operators for AND.
# | or || are the operators for OR 

# CONTROL STRUCTURES set a condition and tell R what to do when that condition is met or is not met
# if, if...else, ifelse testing a condition
# for: execute a loop while a condition is true
# repeat: execute a loop until seeing a break
# break: break the execution of a loop
# next: skip an iteration of a loop
# return: exit a function

# if, if...else | can be followed by an optional else statement
# Using 'if'. The operator == tests a condition. Returns TRUE or FALSE
x <- 2
x == 2
if(x==3){ print("This is true")}  # nothing happens
if(x==2){ print("This is true")}  # "This is true"

# %in% logical operator. Used to identify if an element belongs to an R object
x <- c("hello","world")
if("hello" %in% x){print ("hello")}  # "hello"

# if and if...else
x <- c("hello")
if ("goodbye" %in% x) {print ("goodby")} else {print("see you later")}  # "see you later"

x <- 5
if (x > 0) {print("positive number")} else{print ("negative number")}  # "positive number"

# ifelse
# ifelse(test expression, yes, no)
# If the test expression is TRUE, return values for true elements of test
# If the test expression is FALSE, return values for FALSE elements of test

x <- 1:10
ifelse(x < 5 | x > 8, x, 0)  # if x is less than 5 OR greater than 8, print the values for which they are true, otherwise print 0
# 1 2 3 4 0 0 0 0 9 10
ifelse(x<3 | x>9, x, "Missing")  # a char string, returns values as characters (in quotes)
x <- c(5:2)
ifelse(x==5 | x>3, x, 0)  # 5 4 0 0
