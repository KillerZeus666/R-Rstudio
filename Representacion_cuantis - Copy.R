#Representacion cuantitativas
#Escalas: intervalo y razón
Edades<-c(18,19,17,22,21,25,24,20,18,19,19,21,22,23,24,25)
#Diagrama de puntos
dotchart(Edades,main='Edades de los estudiantes',
         col=rainbow(16),xlab = 'Años')
#Diagrama de tallo y hoja
stem(Edades, scale=0.5)
#n>=30
#Base: birthwt
library(MASS)
Base<-birthwt
#Variable: bwt: peso de nacimiento (gramos)
#Escala:razón
library(fdth)
#Tablas: frecuencia, frecuencia relativa, porcentaje
Tablaf_bwt<-fdt(Base$bwt,k=7) #k es el numero de intervalos
Tablaf_bwt
#Histograma
plot(Tablaf_bwt,type='fh')
plot(Tablaf_bwt,type='rfh')
plot(Tablaf_bwt,type='fp')
###Video Filtros
