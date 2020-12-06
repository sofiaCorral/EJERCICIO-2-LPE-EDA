
#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos el dataset####
potencia <- read_tsv("https://docs.google.com/spreadsheets/d/e/2PACX-1vRWA31ESkbfDiES02Rz2ms7Y5mSt1Nvftu9l5jWD2DzyndUxeWw-qL5tVjJnunYrw/pub?gid=1682298095&single=true&output=tsv")
potencia

#Me quedo solo con las filas vÃ¡lidas
potencia <- potencia[1:60,]
potencia

#Valores nulos de todo el dataSet####
Nulos <- sum(is.na(potencia))
Nulos 

#Imprimir fila de Espania####
Espania <- potencia[potencia$X1 == "España", ]
Espania

#Hay nulos en Espania####
NulosEspania <- sum(is.na(Espania))
NulosEspania

#Borramos toda la fila de los datos que tienen nulos en la columna 2019####
potencia2019 <- potencia[!is.na(potencia$X19),]
potencia2019

#Visualizacion diagrama de dispersion####
library(ggplot2)
ggplot(potencia2019, aes(x = X19, y=X1),) + 
  geom_line(colour="blue")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()

