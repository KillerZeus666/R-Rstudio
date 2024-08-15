#Intervalo de confianza para la proporción poblacional
#p:proporción de persona a favor de la 'libre elección'
#n>=30
x = 1002*0.53#número de éxitos en la muestra 
n = 1002#tamaño de la muestra
p_gorro = 0.53 #proporción muestral 
q_gorro = 1 - p_gorro #probabilidad de 'fracaso'
confianza = 0.90#nivel de confianza
z = qnorm((1-confianza)/2, lower.tail = FALSE)    
#Límite inferior
L.I = p_gorro - z*sqrt(p_gorro*q_gorro/n)
#Límite superior
L.S = p_gorro + z*sqrt(p_gorro*q_gorro/n)
L.I
L.S
#Interpretación: con un nivel de confianza del 90% se tiene
#que la proporción de personas a favor de la libre elección
#está entre 0.5041 y 0.5559 

#n<30
x = #número de éxitos en la muestra 
n = #tamaño de la muestra
p_gorro = x/n #proporción muestral 
q_gorro = 1 - p_gorro #probabilidad de 'fracaso'
confianza = #nivel de confianza
t = qt((1-confianza)/2,n-1, lower.tail = FALSE)    
#Límite inferior
L.I = p_gorro - t*sqrt(p_gorro*q_gorro/n)
#Límite superior
L.S = p_gorro + t*sqrt(p_gorro*q_gorro/n)
L.I
L.S