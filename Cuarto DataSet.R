

#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos el dataset####
TSV <- read_tsv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQYkDKzlmUDpcVD1YOAhnFjcmIRNgMTdMOI-kInTO1yGvNWRhqvRzNz0zB2YisO2jaIcJFpXxHSNnI0/pub?gid=492480808&single=true&output=tsv")
TSV

Nulos <- sum(is.na(TSV))
Nulos    

imprimirNulos <- is.na(TSV)
imprimirNulos

library(ggplot2)
ggplot(TSV, aes(x=TSV$`Comunidad Autónoma`, y=TSV$`Solar fotovoltaica`),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()

TSVNoEspaña <- TSV[TSV$`Comunidad Autónoma` != "ESPAÑA", ]
TSVNoEspaña
  
library(ggplot2)
ggplot(TSVNoEspaña, aes(x=TSVNoEspaña$`Comunidad Autónoma`, y=TSVNoEspaña$`Solar fotovoltaica`),) + 
  #geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()
