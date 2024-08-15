#Intervalo de confianza para la media poblacional
#n>=30
media =756 #media muestral
desv = 35#desviación (muestral o poblacional)  
n = 50#tamaño de la muestra
confianza = 0.95 #nivel de confianza
z = qnorm((1-confianza)/2, lower.tail = FALSE)  
#Limite inferior
L.I = media - z*(desv/sqrt(n))
#Limite superior
L.S = media + z*(desv/sqrt(n))
L.I
L.S
#Interpretación: Con un nivel de confianza del 95%
# se tiene que el promedio de ingesta diaria de 
#lácteos está entre 746.3 y 765.70 gramos por día
#(746.3,765.70)
###############################
#n<30
#miu: La concentración promedio de bilirrubina indirecta
#en el sueto en niños de cuatro días de nacidos
media = 5.98 #media muestral
desv = 3.5#desviación (muestral o poblacional)  
n = 16#tamaño de la muestra
confianza = 0.99  #nivel de confianza
t = qt((1-confianza)/2, n-1,lower.tail = FALSE)  
#Limite inferior
L.I = media - t*(desv/sqrt(n))
#Limite superior
L.S = media + t*(desv/sqrt(n))
L.I
L.S
#Interpretación: Con un nivel de confianza del 99% se tiene
#que el promedio de concentración de bilirrubina indirecta
#en el sueto en niños de cuatro días de nacidos está entre 
#3.4016 y 8.5584 mg/100 cc.
#(3.4016, 8.5584)

##############
#miu: promedio de actividad de cierta enzima en el tejido 
#gástrico
Datos<-c(0.060, 1.189, 0.614, 0.788, 0.273, 2.464, 0.571,
         1.827, 0.537, 0.374, 0.449, 0.262, 0.448, 0.971,
         0.372, 0.898, 0.411, 0.348, 1.925, 0.550, 0.622,
         0.610, 0.319, 0.406, 0.413, 0.767, 0.385, 0.674,
         0.521, 0.603, 0.533, 0.662, 1.177, 0.307, 1.499)
media = mean(Datos) #media muestral
desv = sd(Datos)#desviación (muestral o poblacional)  
n = length(Datos)#tamaño de la muestra
confianza = 0.95 #nivel de confianza
z = qnorm((1-confianza)/2, lower.tail = FALSE)  
#Limite inferior
L.I = media - z*(desv/sqrt(n))
#Limite superior
L.S = media + z*(desv/sqrt(n))
L.I
L.S
#Interpretación: Con un nivel de confianza del 95% se tiene el
#promedio de actividad de la enzima en el tejido gástrico está 
#entre 0.5374 y 0.8814 micromoles por minuto por gramo de tejido
#(0.5374,0.8814)



