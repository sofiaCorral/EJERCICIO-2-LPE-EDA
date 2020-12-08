#Importamos las librerias necesarias####
pacman::p_load(pacman,tm,SnowballC,tidyverse)

#Cargamos los datos####
datosAnimales <- read_csv(file.choose())
datosAnimales

#Creo una variable con la columna de los paises####
#Al ser esta columna en la que se va a enfocar mi analisis, he preferido verla mejor
ColumnaPaises <- datosAnimales[,"All_DistributionFullNames"]
ColumnaPaises

#especies solo espania####
soloEspania <- datosAnimales %>% filter(All_DistributionFullNames=='Spain')
soloEspania



#Visualizacion diagrama de barras####
soloEspania %>% ggplot( mapping = aes(y=Family))+geom_bar()
