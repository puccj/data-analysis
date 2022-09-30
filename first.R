x <- seq(0,100, by=3)
x[ x %% 5 == 0] <- NA
print(x)
