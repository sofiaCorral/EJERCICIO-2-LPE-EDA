epData <- read.csv(file.choose(), header = TRUE, sep = ';')
epData

max(epData$Solar)
epData <- as.factor(epData)
hist(x =epData, main = "Histograma de la tasa de fertilidad", 
     xlab = "Tasa de fertilidad", ylab = "Frecuencia")
