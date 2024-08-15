#Regresión lineal simple
x<-c(2,2,2,3,4,1,5) #número de integrantes
#Cantidad de dinero gastada en comestibles
y<-c(168.33,95.75,110.19,118.33,150.92,85.86,180.62)
#Diagrama de dispersión 
plot(x,y,main='Diagrama de dispersión gasto 
     en comestibles',xlab='número de integrantes',
     ylab = 'Gasto (dólares)',col = c('red'))
####################
x<-c(1360,1940,1750,1550,1790,1750,2230,1600,1450,
     1870,2210,1480)
y<-c(278.5,375.7,339.5,329.8,295.6,310.3,460.5,305.2,288.6,
     365.7,425.3,268.8)
plot(x,y,main='Diagrama de dispersión precio aptos según área',
     xlab='área apto(pies cuadrados)',
     ylab = 'Precio (dólares)',col = c('purple'))
###Coeficiente de correlación
#fórmula 
r = cov(x,y)/(sd(x)*sd(y))
r
cor(x,y)#código coeficiente de correlación
#Recta de regresión por mínimos cuadrados
r_m = lsfit(x,y)$coefficients
r_m
a = r_m[1]
a #intercepto con el eje y
b = r_m[2]
b #pendiente de la recta
#Y = a+b*X
#Y = -6.0562+0.1962*X
#¿Cuál es el precio estimado de un apto 
#que mide 1450 pies cuadrados?
Precio = a + b*1450
Precio
#Si se tiene un presupuesto de 300 mil dólares, ¿cuál
#es el área estimada de el apto que se puede comprar?
Area = (300-a)/b
Area
