

#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos el dataset####
produccion <- read_tsv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQYkDKzlmUDpcVD1YOAhnFjcmIRNgMTdMOI-kInTO1yGvNWRhqvRzNz0zB2YisO2jaIcJFpXxHSNnI0/pub?gid=492480808&single=true&output=tsv")
produccion

#Me quedo solo con las filas válidas
produccion <- produccion[1:19,]
produccion

#Vision general produccion fotovoltaica####
library(ggplot2)
ggplot(produccion, aes(x=produccion$`Solar fotovoltaica`, y=produccion$`Comunidad Aut�noma`),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=10, fill="cyan1", colour="cyan1") + 
  theme_minimal()

#Creo nuevo dataSet sin España####
TSVNoEspania <- produccion[produccion$`Comunidad Autónoma` != "ESPA�A", ]
TSVNoEspania

#Visualizacion produccion fotovoltaica CCAA####
library(ggplot2)
ggplot(TSVNoEspania, aes(x=TSVNoEspania$`Solar fotovoltaica`, y=TSVNoEspania$`Comunidad Aut�noma`),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="lightpink", colour="lightpink") + 
  theme_minimal()

#CCAA Mas energia fotovoltaica ha producido####
maxFotovoltaica <- subset(TSVNoEspania, TSVNoEspania$`Solar fotovoltaica` == max(TSVNoEspania$`Solar fotovoltaica`), "Solar fotovoltaica")#solo imprime el valor
maxFotovoltaica

#CCAA menos energia fotovoltaica ha producido
minFotovoltaica <- subset(TSVNoEspania, TSVNoEspania$`Solar fotovoltaica` == min(TSVNoEspania$`Solar fotovoltaica`), "Comunidad Autónoma")#solo imprime el valor
minFotovoltaica

#Valores nulos####
Nulos <- sum(is.na(produccion))
Nulos    




