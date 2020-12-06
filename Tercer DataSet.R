#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos los datos####

datosAnimales <- read_csv(file.choose())
datosAnimales

#Creo una variable con la columna de los paises para poder limpiarla mejor####
ColumnaPaises <- datosAnimales[,"All_DistributionFullNames"]
ColumnaPaises

#Aplico expresiones regulares####
soloEspaña <- str_match(datosAnimales, '\b(Spain)\b')
soloEspaña

#Solo en Espania####
prueba <- datosAnimales[datosAnimales$All_DistributionFullNames == 'Spain', ]
prueba

#especies solo espania####
contar <- sum(datosAnimales[datosAnimales$All_DistributionFullNames == 'Spain'],)
contar

