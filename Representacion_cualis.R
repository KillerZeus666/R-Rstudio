#Representacion de variables cualitativas
CO2
Datos<- CO2
#Variable Plant
#Escala Ordinal
#Tabla de frecuencia
Tablaf_Plant<-table(Datos$Plant)
Tablaf_Plant
#Tabla de frecuencia relativa
Tablafr_Plant<-prop.table(Tablaf_Plant)
Tablafr_Plant
#Tabla de Porcentaje
TablaP_Plant<-Tablafr_Plant*100
TablaP_Plant
#Diagrama de barras frecuencia
barplot(Tablaf_Plant,main = 'Identificador de la planta',
        xlab = 'Categorías',ylab = 'Frecuencia', 
        col = c('yellow','blue','orange','brown','pink' ,'red','purple'))
#Diagrama de barras Porcentaje
barplot(TablaP_Plant,main = 'Identificador de la planta',
        xlab = 'Categorías',ylab = 'Porcentaje', 
        col = rainbow(12))
#Diagrama de Pastel
pie(TablaP_Plant)

###############
#Tarea: Video representacion variables cuanti teorico

