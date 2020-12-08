#Importamos las librerias necesarias####
pacman::p_load(pacman,tidyverse)
#Cargamos los datos####
datosAnimales <- read_csv('cites_listings_2020-11-27 22_58_comma_separated.csv')
#especies solo espania####
only_es <- datosAnimales %>% filter(All_DistributionFullNames=='Spain')
only_es %>% ggplot( mapping = aes(y=Family))+geom_bar()
