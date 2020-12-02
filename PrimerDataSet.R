
#Importamos las librerias necesarioas####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos el dataset####
TSV <- read_tsv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQYkDKzlmUDpcVD1YOAhnFjcmIRNgMTdMOI-kInTO1yGvNWRhqvRzNz0zB2YisO2jaIcJFpXxHSNnI0/pub?gid=1141698242&single=true&output=tsv")
TSV

#Imprimo solo la fila de españa####
Nuevo <- TSV[TSV$País == "España", ]
Nuevo

#Imprimo solo los valores de Kw####
fila <- TSV[, 2:19]
fila

#PRUEBAS VISUALIZACIÓN####

#esta funciona
ggplot(fila) +
geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()


library(ggplot2)
ggplot(TSV, aes(x=País, y=Total2019)) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()

library(ggplot2)
g <- ggplot(fila, aes(x=País, fill=Nuevo[1:,]))
g + geom_density(alpha=0.8, colour="gray60") + xlim(c(0, 8))
