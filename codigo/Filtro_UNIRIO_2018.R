local<-"C:\\Users\\Steven\\Desktop\\Microdados\\Microdados_2018"
setwd(local)
getwd()

library(ffbase)
#Para abrir o arquivo “DM_ALUNO.csv”,copie  o  comando  abaixo  e  cole  no script.  
#Rode  o comando  pressionando  Ctrl+R.  O  atributo  “first.rows”  determina  a  quantidade  de  linhas utilizadas para que o programa perceba o tipo/categoria das variáveis. 

ALUNO<-read.csv2.ffdf(file="C:/Users/Steven/Desktop/Microdados/Microdados_2018/microdados_ed_superior_2018/dados/DM_ALUNO.CSV",sep="|",first.rows=1000000)
#É importante que o Pipe( | ) seja utilizado como delimitador.

#---------------------------------------------------------------------
# Somente a UNIRIO
#---------------------------------------------------------------------
ALUNO_UNIRIO18 <- subset(ALUNO , CO_IES == 693)
ALUNO_UNIRIO18 <- data.frame(ALUNO_UNIRIO18)
saveRDS(ALUNO_UNIRIO18,"ALUNO_UNIRIO18.RDS")
#---------------------------------------------------------------------
# Todas as Universidades do Estado do Rio de Janeiro
#---------------------------------------------------------------------
#693	UNIVERSIDADE FEDERAL DO ESTADO DO RIO DE JANEIRO
#15	UNIVERSIDADE CATÓLICA DE PETRÓPOLIS
#140	UNIVERSIDADE SEVERINO SOMBRA
#163	UNIVERSIDADE ESTÁCIO DE SÁ
#165	UNIVERSIDADE VEIGA DE ALMEIDA
#176	UNIVERSIDADE CASTELO BRANCO
#1153	UNIVERSIDADE CÂNDIDO MENDES
#240	UNIVERSIDADE SANTA ÚRSULA
#330	UNIVERSIDADE IGUAÇU
#472	UNIVERSIDADE DO GRANDE RIO PROFESSOR JOSÉ DE SOUZA HERDY
#528	PONTIFÍCIA UNIVERSIDADE CATÓLICA DO RIO DE JANEIRO
#547	UNIVERSIDADE DO ESTADO DO RIO DE JANEIRO
#663	UNIVERSIDADE SALGADO DE OLIVEIRA
#574	UNIVERSIDADE FEDERAL RURAL DO RIO DE JANEIRO
#586	UNIVERSIDADE FEDERAL DO RIO DE JANEIRO
#572	UNIVERSIDADE FEDERAL FLUMINENSE
#1027	UNIVERSIDADE ESTADUAL DO NORTE FLUMINENSE DARCY RIBEIRO
#---------------------------------------------------------------------

ALUNO_UNIVERSIDADE_RJ_18<- subset(ALUNO , CO_IES == 693 | CO_IES ==  15 | CO_IES == 140 | 
                                          CO_IES == 163 | CO_IES == 165 | CO_IES == 176 | 
                                          CO_IES == 1153 | CO_IES == 240 | CO_IES == 330 | 
                                          CO_IES == 472 | CO_IES == 528 | CO_IES == 547 | 
                                          CO_IES == 663 | CO_IES == 574 | CO_IES == 586 | 
                                          CO_IES == 572 | CO_IES == 1027)
ALUNO_UNIVERSIDADE_RJ_18 <- data.frame(ALUNO_UNIVERSIDADE_RJ_18)

saveRDS(ALUNO_UNIVERSIDADE_RJ_18,"ALUNO_UNIVERSIDADE_RJ_18.RDS")

#----------------------------------------------------------------------------------------------------------------------------------

local<-"C:/Users/Steven/Documents/GitHub/microdados_censo_superior/dados/2018/ALUNO_UNIVERSIDADE_RJ_18.RDS"
ALUNO_UNIVERSIDADE_RJ_18<-readRDS(local)
# Eliminar os niveis dos fatores nao utilizado (drop factor levels in a dataset)
ALUNO_UNIVERSIDADE_RJ_18<-droplevels(ALUNO_UNIVERSIDADE_RJ_18)

library(tibble)
ALUNO_UNIVERSIDADE_RJ_18<-tibble(ALUNO_UNIVERSIDADE_RJ_18)
saveRDS(ALUNO_UNIVERSIDADE_RJ_18,"ALUNO_UNIVERSIDADE_RJ_18.RDS")
getwd()

#----------------------------------------------------------------------------------------------------------------------------------
#Bases grandes, quando carregadas pela primeira vez, podem demorar alguns minutos para concluir  o  processamento  (dependendo  das  configurações  do  computador).  
#Sugerimos salvar a base no formato ‘ffdf’ para que uma nova carga inicial não seja necessária numa próxima 
#sessão.save.ffdf(ALUNO, dir="./ALUNO_2016")

#Dados  salvos  no  formato  ‘ffdf’  podem  ser  carregados  em outromomento  utilizando  o comando abaixo. 
#O carregamento da base com a função abaixo é praticamente instantâneo.
#load.ffdf(dir="./ALUNO")

#Após esses procedimentos, a base de dados já estará aberta, permitindo sua análise.
#Para conferir  se  a  base  foi  lida  corretamente,  é  possível  visualizar 
#algumas  linhas  
#Nesse exemplo, são visualizadas as cincoprimeiraslinhas de cada coluna.
#ALUNO[1:10,]

