#Datos:iris 
#Variable: Ancho de sepalo
Datos<-iris
#1. Cuartiles
Resumen<- summary(Datos$Sepal.Width)
Resumen
Q1 = Resumen[2]
Q1
Q2 = Resumen[3]
Q2
Q3 = Resumen[5]
Q3
#2. IQR = Q3-Q1
IQR = Q3-Q1
IQR
#3. Limites
L.I = Q1-1.5*(IQR)
L.I
L.S = Q3+1.5*(IQR)
L.S
#4. Atipicos
atipicos<-Datos[Datos$Sepal.Width < L.I | Datos$Sepal.Width > L.S,]
atipicos  


  