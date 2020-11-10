
library(checkmate)


# modified code -----------------------------------------------------------


# function for calulating the confidence interval
# input: numeric vector
# output: confidence interval

calculating_confidence_interval <- function(x) {
  
  assert_numeric(x, min.len = 2, finite = TRUE) 
  # checking, if input is numeric, finite with length greater than 1
  
  mean <- mean(x)
  standard_deviation <- sd(x)
  observation_count <- length(x)
  half_width <- 1.96 * standard_deviation / sqrt(observation_count)
  
  c(mean - half_width, mean + half_width)
}




# testing the function ----------------------------------------------------


x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)
v <- z^2  


calculating_confidence_interval(x)
calculating_confidence_interval(y)
calculating_confidence_interval(z)
calculating_confidence_interval(v)

