# part 1: calculating correlation measures
x <- c(20, 0, 1, 12, 3)
y <- c(7, 0, 2, 5, 3)
cor(x, y, method="pearson")
cor.test(x, y, method="pearson")

cor(x, y, method="spearman")
cor.test(x, y, method="spearman")

m <- c(7, 1, 8, 10, 9, 6, 5, 3, 2, 4)
n <- c(10, 2, 6, 8, 7, 4, 9, 3, 1, 5)
cor(m, n, method="kendall")
cor.test(m, n, method="kendall")

# part 2: Simulating correlated data and plots

library(mvtnorm)

a <- rmvnorm(n=100,mean=c(20,40),sigma=matrix(c(5,0.01*sqrt(50), 0.01*sqrt(50),10),2,2))
aa <- as.data.frame(a)

b <- rmvnorm(n=100,mean=c(20,40),sigma=matrix(c(5,0.25*sqrt(50), 0.25*sqrt(50),10),2,2))
bb <- as.data.frame(b)

c <- rmvnorm(n=100,mean=c(20,40),sigma=matrix(c(5,0.6*sqrt(50), 0.6*sqrt(50),10),2,2))
cc <- as.data.frame(c)

d <- rmvnorm(n=100,mean=c(20,40),sigma=matrix(c(5,0.9*sqrt(50), 0.9*sqrt(50),10),2,2))
dd <- as.data.frame(d)

par(mfrow=c(2,2))

plot(aa$V1, aa$V2, xlab="Variable 1", ylab="Variable 2", main="r = 0.01")
plot(bb$V1, bb$V2, xlab="Variable 1", ylab="Variable 2", main="r = 0.25")
plot(cc$V1, cc$V2, xlab="Variable 1", ylab="Variable 2", main="r = 0.6")
plot(dd$V1, dd$V2, xlab="Variable 1", ylab="Variable 2", main="r = 0.9")


