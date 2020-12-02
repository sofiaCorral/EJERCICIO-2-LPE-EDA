pacman::p_load(pacman,tm,SnowballC,tidyverse)
dataset <- read.csv("http://www.catastro.minhafp.es/documentos/estadisticas/RUSTICA2019.xls", header = TRUE, sep = ',')
dataset

dataset[1,]

DATOS <- read_csv("http://www.catastro.minhafp.es/documentos/estadisticas/PARCELAS2019.xls")

dataSetGuada <- openxlsx::read.xlsx("InformeInstalaciones-02_12_2020.xls")
  read_(file.choose())
dataSetGuada
