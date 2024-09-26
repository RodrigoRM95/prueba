library(readxl)
library(dplyr)

#df_final <- read_excel("C:/Users/portr/Downloads/Catalogo_de_Pruebas.xlsx") #read_excel("C:/Users/portr/Downloads/Tabla_final_XRF1.xlsx") #Abrir CSV o Excel
df_final <- read_excel("C:\\Users\\portr\\Desktop\\Servicio\\Tabla_final_XRF1_datos revisados.xlsx")

df_final[df_final == ""] <- NA #Intercambia "" por NA

df_tabla <- df_final[, (names(df_final) %in% c("Epoca","Pieza"))] #nuevo DF para manipular tablas
df_tabla

df_aux <- df_tabla %>% group_by(Epoca,Pieza) %>% summarise(N=n())
df_aux

df_aux2 <- df_aux %>% group_by(Epoca) %>% summarise(N=n())
df_aux2