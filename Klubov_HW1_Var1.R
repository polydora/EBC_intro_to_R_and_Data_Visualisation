?Anova
install.packages('car')
library(car)
?Anova
Anova(mod,...) #mod параметр функции, которая она получает на входе
?sqrt
a<-180/sqrt(2)
b<-cos(pi)/11^0.25
c<-(10+exp(1))^5
log((a-b)/c, 4) #ответ-5.673048
install.packages("readxl")
library(readxl)
cat <- read_excel("F:/R_kursy_EBC/R_cours/My_first_project/Date/catsM.xlsx")
Model <- lm(Hwt ~ Bwt, data = cat)
summary(Model)
str(cat)
plot(Model, page = 1)
par(mfrow = c(2, 2))

