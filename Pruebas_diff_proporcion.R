#Pruebas de hipótesis diferencia de proporciones
#Ejemplo:
#p1: proporción de hombres ingresados al hospital por 
#enfermedad del corazón
#p2: proporción de mujeres ingresados al hospital por 
#enfermedad del corazón
#Prueba cola a derecha
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 > p0
p0 = 0
#Datos  
x1 = 52#número de éxitos en la muestra 1
n1 = 1000#tamaño muestra 1
p1_gorro = x1/n1 
x2 = 23#número de éxitos en la muestra 2
n2 = 1000#tamaño muestra 2
p2_gorro = x2/n2
p_gorro =(x1+x2)/(n1+n2)
q_gorro = 1-p_gorro
alpha =0.05
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
#5.Conclusión:Rechazo Ho, los datos presentan suficiente
#evidencia para indicar que el porcentaje de hombres 
#ingresados por enfermedad del corazón es mayor que el 
#de mujeres.
#################################################
#Prueba cola a izquierda
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 < p0
p0 = 0
#Datos  
x1 = 52#número de éxitos en la muestra 1
n1 = 1000#tamaño muestra 1
p1_gorro = x1/n1 
x2 = 23#número de éxitos en la muestra 2
n2 = 1000#tamaño muestra 2
p2_gorro = x2/n2
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
#5.Conclusión:....
######################################################
#Prueba cola a dos colas
#1.Ho: p1-p2 = p0
#2.Ha: p1-p2 diferente a p0
p0 = 0
#Datos  
x1 = 52#número de éxitos en la muestra 1
n1 = 1000#tamaño muestra 1
p1_gorro = x1/n1 
x2 = 23#número de éxitos en la muestra 2
n2 = 1000#tamaño muestra 2
p2_gorro = x2/n2
p_gorro =(x1+x2)/(n1+n2)
q_gorro = 1-p_gorro
alpha =0.05
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
#5.Conclusión:....
