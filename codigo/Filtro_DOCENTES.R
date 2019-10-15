
library(readr)
DOCENTES <- read_delim("DADOS/DM_DOCENTE.CSV", "|", 
                  escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"), 
                  trim_ws = TRUE)


#---------------------------------------------------------------------
# Somente a UNIRIO
#---------------------------------------------------------------------
DOCENTE_UNIRIO16 <- subset(DOCENTES , CO_IES == 693)
DOCENTE_UNIRIO16 <- data.frame(DOCENTE_UNIRIO16)
saveRDS(DOCENTE_UNIRIO16,"DOCENTE_UNIRIO16.RDS")

#---------------------------------------------------------------------
# Todas as Universidades do Estado do Rio de Janeiro
#---------------------------------------------------------------------
DOCENTE_UNIVERSIDADE_RJ_16<- subset(DOCENTES , CO_IES == 693 | CO_IES ==  15 | CO_IES == 140 | 
                                    CO_IES == 163 | CO_IES == 165 | CO_IES == 176 | 
                                    CO_IES == 1153 | CO_IES == 240 | CO_IES == 330 | 
                                    CO_IES == 472 | CO_IES == 528 | CO_IES == 547 | 
                                    CO_IES == 663 | CO_IES == 574 | CO_IES == 586 | 
                                    CO_IES == 572 | CO_IES == 1027)
DOCENTE_UNIVERSIDADE_RJ_16 <- data.frame(DOCENTE_UNIVERSIDADE_RJ_16)

saveRDS(DOCENTE_UNIVERSIDADE_RJ_16,"DOCENTE_UNIVERSIDADE_RJ_16.RDS")
