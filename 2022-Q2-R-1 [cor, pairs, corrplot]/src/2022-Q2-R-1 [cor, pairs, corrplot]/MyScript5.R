# wprowadzenie wartości zmiennych x1 oraz y1
x1 = c(17,20,16,18,18)
y1 = c(19,22,21,21,18)

# obliczanie wartości średniej, itd. dla wartości x1
summary(x1)
# obliczenie wyłącznie wartości średniej (mean)
mean(x1)
# obliczenie wariancji dla x1
var(x1)

# obliczanie wartości średniej, itd. dla wartości y1
summary(y1)
# obliczenie wyłącznie wartości średniej (mean)
mean(y1)
# obliczenie wariancji dla y1
var(y1)

# obliczenie współczynnika korelacji, jaka wychodzi pomiędzy 2 zmiennymi (x1, y1)
cor(x1,y1)

# obliczenie współcznniku kowariancji Pearsona pomiędzy dwiema zmiennymi (x1, y1)
cov(x1,y1, method = c("pearson"))

# obliczanie współczynniku korelacji Spearmana pomiędzy dwiema zmiennymi [x1 oraz y1]
cor(x1,y1, method = c("spearman"))

# ////////////////////////////////////////////////////////////////////////////////////////////////////

# wyświetlenie instrukcji dla cor
??cor
help(cor)

# wprowadzenie wartości zmiennych x2 oraz y2
x2 = c(9,16,11,12,11,9,14,9,10,9)
# x2 = c(19,19,16,13,15,17,13) #[ver2 (1-2)]
y2 = c(42,49,46,44,49,45,50,48,52,54)
# y2 = c(58,60,59,65,61,57,67) #[ver2 (2-2)]

# obliczenie współczynnika korelacji, jaka wychodzi pomiędzy 2 zmiennymi (x2, y2)
cor(x2,y2)

# obliczenie współcznniku kowariancji Pearsona pomiędzy dwiema zmiennymi (x2, y2)
cov(x2,y2, method = c("pearson"))

# obliczanie współczynniku korelacji Spearmana pomiędzy dwiema zmiennymi [x2 oraz y2]
cor(x2,y2, method = c("spearman"))

# obliczenie współczynnika korelacji Kendalla dla zmiennych x2 i y2
cor(x2,y2, method = c("kendall"))

# ////////////////////////////////////////////////////////////////////////////////////////////////////

# import danych z pliku .csv
read.csv(file = "US_energy_consumption.csv", header = TRUE, sep = ";", dec = ",")

# import danych z pliku .csv [ oraz nadanie nazwy dane dla danych z pliku .csv ]
dane = read.csv(file = "US_energy_consumption.csv", header = TRUE, sep = ";", dec = ",")
head (dane)

# okrojenie tabelki z nazw (z pierwszej kolumnmy)
x = dane[-1,-1]
x

cor(x)

pairs(x)

# instalacja paczki corrplot
install.packages("corrplot")
library(corrplot)

# użycie zainstalowanej paczki corrplot
corrplot(cor(x))
