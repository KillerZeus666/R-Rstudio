#Pruebas de hipótesis para la proporción poblacional
#p:proporción poblacional
#p:proporciónde personas que participan en actividades
#al menos dos veces por semana
#Prueba cola a derecha
#1. Ho:p=p0
#2. Ha:p>p0
p0 = 0.20
q0 =1-p0
#3a. Estadístico de prueba 
x = 15 #número de éxitos o casos favorables
n = 100 #tamaño de la muestra
p_gorro = x/n #proporción muestral 
q_gorro = 1-p_gorro
alpha = 0.05
z = (p_gorro-p0)/sqrt((p0*q0)/n)
z
#3b. Valorp
valorp = pnorm(z,lower.tail = FALSE)
valorp
#Método del valorp
if(valorp <= alpha){
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
#5. Conclusión: ....
################################
#Prueba cola izquierda
#1. Ho:p=p0
#2. Ha:p<p0
p0 = 0.20
q0 =1-p0
#3a. Estadístico de prueba 
x = 15 #número de éxitos o casos favorables
n = 100 #tamaño de la muestra
p_gorro = x/n #proporción muestral 
q_gorro = 1-p_gorro
alpha = 0.05
z = (p_gorro-p0)/sqrt((p0*q0)/n)
z
#3b. Valorp
valorp = pnorm(z,lower.tail = TRUE)
valorp
#Método del valorp
if(valorp <= alpha){
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
#5. Conclusión: no rechazo Ho, los datos no presentan
#suficiente evidencia para indicar que el porcentaje
#de participación es menor a 20%
########################################
#Prueba cola a dos colas
#1. Ho:p=p0
#2. Ha:p diferente a p0
p0 = 0.20
q0 =1-p0
#3a. Estadístico de prueba 
x = 15 #número de éxitos o casos favorables
n = 100 #tamaño de la muestra
p_gorro = x/n #proporción muestral 
q_gorro = 1-p_gorro
alpha = 0.05
z = (p_gorro-p0)/sqrt((p0*q0)/n)
z
#3b. Valorp
if(z>=0){
  valorp = 2*pnorm(z,lower.tail = FALSE)
}else{
  valorp = 2*pnorm(z,lower.tail = TRUE)
}
valorp
#Método del valorp
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qnorm(alpha/2,lower.tail = FALSE)
valor_critico
if(z<=-valor_critico | z>=valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:....



