#Codigo para problema 2

ls()#listar todas las variables hasta el momento
rm(list=ls()) #amb això borrem totes les dades que havia guardat abans
mis_dades <- mtcars

data = mtcars
data
hist(data$mpg) #aquesta linia seria ja la resposta al problema 2

pie (data$mpg)
pie(table(data$cyl))
#això ultim son coses extres que ha fet