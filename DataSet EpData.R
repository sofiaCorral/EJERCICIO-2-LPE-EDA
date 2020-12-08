#Cargamos el dataSet####
epData <- read.csv(file.choose(), header = TRUE, sep = ';')
epData

#Valores nulos de todo el dataSet####
NulosepData <- sum(is.na(epData))
NulosepData

#Nos quedamos solo con los datos que nos importan####
epData <- epData[1:54,]
epData

#Calculo el valor mayor de energia solar####
max(epData$Solar)

#DataSet solo con variables numericas####
solNum <- epData[,3:10]
solNum

#imprimo el 2018####
epData2018 <- epData[epData$AÃ.o == "2018", ]
epData2018

#Solo selecciono 
epData2018 <- epData[,3:10]
epData2018

#Visualizacion evolucion energia solar####
library(ggplot2)
ggplot(epData, aes(x=epData$AÃ.o, y=epData$Solar),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=10, fill="firebrick4 ", colour="firebrick4") + 
  theme_minimal()

#Visualizacion evolucion energia eolica####
library(ggplot2)
ggplot(epData, aes(x=epData$AÃ.o, y=epData$`EÃ³lica`),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=10, fill="hotpink4", colour="hotpink4") + 
  theme_minimal()

#Grafico de sectores####
pie(epData2018, clockwise=TRUE, main="Grafico de sectores 2018")

#Histograma####
hist(x =epData, main = "Histograma de epData", 
     xlab = "valor de X", ylab = "Valor de Y")
