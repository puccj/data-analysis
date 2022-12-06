library(ggplot2)

radon <- read.csv("./srrs2.dat", header=T, sep=",")
columns_to_keep <- c("state", "county", "floor", "room", "activity")
radon <- radon[ , columns_to_keep ]
radon <- radon[radon$floor < 9,]
radon[ , "floor"] <- as.factor(radon[ , "floor"])
radon[ , "log_activity"] <- log( radon[ , "activity"] + 1 )

x1 <- radon[ radon$floor == 0, "activity" ]
x2 <- radon[ radon$floor == 1, "activity" ]
t.test(x1, x2)

t_test <- t.test(x1, x2)
t_test$statistic
t_test$p.value

x1 <- radon[ radon$floor == 0,"activity" ]
qqnorm(x1, main = "Normal qq-plot (floor 0)", ylab = "Empirical Quantiles", xlab = "Theoretical Quantiles")
qqline(x1, col="red", lty=4, lwd=2)