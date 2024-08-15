#Medidas numéricas
x<-c(2,5,6,9,11,150)
sum(x)/6
#Datos: beaver1
#Variable:temp
Datos<-beaver1
min(Datos$temp)
max(Datos$temp)
##Datos:iris
#Variable:longitud de petalo
#¿Cuál de las especies tiene en promedio
#mayor longitud de petalo?
Datos<-iris
Setosa<-Datos[Datos$Species =='setosa',]
Setosa
Virginica<-Datos[Datos$Species =='virginica',]
Virginica
Versicolor<-Datos[Datos$Species == 'versicolor',]
Versicolor
#Media por Especie
x_setosa<-mean(Setosa$Petal.Length)
x_virginica<-mean(Virginica$Petal.Length)
x_versicolor<-mean(Versicolor$Petal.Length)
#desviación por Especie
sd_setosa<-sd(Setosa$Petal.Length)
sd_virginica<-sd(Virginica$Petal.Length)
sd_versicolor<-sd(Versicolor$Petal.Length)
#CV por Especie
CV_setosa<-sd_setosa/x_setosa*100
CV_virginica<-sd_virginica/x_virginica*100
CV_versicolor<-sd_versicolor/x_versicolor*100
