
library(readr)
IES <- read_delim("DADOS/DM_IES.CSV", "|", 
                  escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"), 
                  trim_ws = TRUE)
#---------------------------------------------------
# Estado do Rio de Janeiro -> CO_UF_IES == 33
# Universidade -> # CO_ORGANIZACAO_ACADEMICA == 1
#---------------------------------------------------
library(dplyr)
IES <- IES %>%
  filter(CO_UF_IES == 33)  %>%
  filter(CO_ORGANIZACAO_ACADEMICA == 1)


IES$CO_IES
