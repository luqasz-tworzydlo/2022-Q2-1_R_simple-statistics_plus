x = c(17,19,18,20,18)
y = c(28,30,27,29,28)

# obliczanie korelacji Pearsona
cor(x,y, method = c("spearman"))

??cor
help(cor)

xx = c(14,15,13,14,7,14,14)
yy = c(44,44,38,45,48,50,46)

cor(xx,yy, method = c("kendall"))

# import danych z pliku .csv

read.csv(file = "US_energy_consumption.csv", header = TRUE, sep = ";", dec = ",")



dane = read.csv(file = "US_energy_consumption.csv", header = TRUE, sep = ";", dec = ",")
head (dane)

# okrojenie tabelki z nazw (z pierwszej kolumnmy)

x = dane[-1,-1]
x

cor(x)

pairs(x)

install.packages("corrplot")
library(corrplot)


corrplot(cor(x))
