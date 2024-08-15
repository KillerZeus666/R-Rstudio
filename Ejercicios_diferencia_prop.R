#Ejercicios
#1.
######################################################
#p1:proporción de mujeres ingenieras eléctricas
#p2:proporción de mujeres ingenieras quimicas
#Prueba cola a dos colas
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 diferente a p0
p0 = 0
#Datos  
x1 = 80#número de éxitos en la muestra 1
n1 = 250#tamaño muestra 1
p1_gorro = x1/n1 
x2 = 40#número de éxitos en la muestra 2
n2 = 175#tamaño muestra 2
p2_gorro = x2/n2
p_gorro =(x1+x2)/(n1+n2)
q_gorro = 1-p_gorro
alpha = 0.10
#3a. Estadístico de prueba
z =(p1_gorro-p2_gorro-p0)/sqrt(p_gorro*q_gorro*(1/n1+1/n2))
z
#3b. Valorp
if(z>=0){
  valorp = 2*pnorm(z,lower.tail = FALSE)
}else{
  valorp = 2*pnorm(z,lower.tail = TRUE)
}
valorp
if(valorp<=alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo 
valor_critico = qnorm(alpha/2,lower.tail = FALSE)
valor_critico
if(z>=valor_critico | z<= -valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:Rechazo Ho, por lo tant los datos presentan
#suficientee evidencia para mostrar una diferencia 
#significativa entre las ingenieras eléctricas y químicas
##################################################
#p1:proporción de mujeres ingenieras eléctricas
#p2:proporción de mujeres ingenieras quimicas
#Prueba cola a dos colas
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 > p0
p0 = 0
#Datos  
x1 = 80#número de éxitos en la muestra 1
n1 = 250#tamaño muestra 1
p1_gorro = x1/n1 
x2 = 40#número de éxitos en la muestra 2
n2 = 175#tamaño muestra 2
p2_gorro = x2/n2
p_gorro =(x1+x2)/(n1+n2)
q_gorro = 1-p_gorro
alpha = 0.10
#3a. Estadístico de prueba
z =(p1_gorro-p2_gorro-p0)/sqrt(p_gorro*q_gorro*(1/n1+1/n2))
z
#3b. Valorp
valorp = pnorm(z,lower.tail = FALSE)
valorp
if(valorp<=alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo 
valor_critico = qnorm(alpha,lower.tail = FALSE)
valor_critico
if(z>=valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:Los datos presentan suficiente evidencia
#para indicar que la proporción de ingenieras
#eléctricas es mayor que la propoción de ingenieras
#químicas.

###Ejercicio 10.45
#p1: proporción de sobrevivientes que no recibió 
#medicamento
#p2: proporción de sobrevivientes que recibió 
#medicamento
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 < p0
p0 = 0
#Datos 
p1_gorro =0.36
n1 = 50 #tamaño muestra 1
x1 = n1*p1_gorro#número de éxitos en la muestra 1
p2_gorro = 0.60
n2 = 50#tamaño muestra 2
x2 = n2*p2_gorro#número de éxitos en la muestra 2
p_gorro =(x1+x2)/(n1+n2)
q_gorro = 1-p_gorro
alpha =0.05
#3a. Estadístico de prueba
z =(p1_gorro-p2_gorro-p0)/sqrt(p_gorro*q_gorro*(1/n1+1/n2))
z
#3b. Valorp
valorp = pnorm(z,lower.tail = TRUE)
valorp
if(valorp<=alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo 
valor_critico = qnorm(alpha,lower.tail = TRUE)
valor_critico
if(z<=valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:Rechazo Ho, por lo tanto los datos
#presentan suficiente evidencia para demostrar que
#el medicamento es efectivo.
