# Introduction to Probability and Statistics for Engineers
## Philip B. Stark http://www.stat.berkeley.edu/~stark

## University of Padova
## 28 June--7 July 2015

## software requirements
+ LaTeX
+ Jupyter 3.0

## Pseudo-random number generation

+ Desirable properties:
    + uniform
    + uncorrelated
    + long period
    + behave like U(0,1) random variables
+ Marsaglia's DIEHARD tests http://en.wikipedia.org/wiki/Diehard_tests
+ Requirements for Statistics weaker than for cryptography
+ Mersenne Twister is adequate for most statistical purposes
+ Linear congruential are not. Notably, Wichmann-Hill
+ Setting seed explicitly helps make analysis reproducible

## Introduction to R

Key data analysis verbs (from H. Wickham):

* Select
* Filter
* Mutate
* Summarize
* Arrange

### Example of R code inline

```r
x <- c(1,2,3);
x
3*x
x^2
```



