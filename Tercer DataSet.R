#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos los datos####
datosAnimales <- read_csv(file.choose())
datosAnimales

#Creo una variable con la columna de los paises para poder limpiarla mejor####
ColumnaPaises <- datosAnimales[,"All_DistributionFullNames"]
ColumnaPaises

s <-select(datosAnimales[datosAnimales$All_DistributionFullNames == 'Spain', ], contains("Spain"))
s
prueba <- datosAnimales[datosAnimales$All_DistributionFullNames == 'Spain', ]
prueba
#Aplico expresiones regulares####
#str_match(ColumnaPaises, ',[Spain+]')
str_match(ColumnaPaises, '\b(Spain)\b')
