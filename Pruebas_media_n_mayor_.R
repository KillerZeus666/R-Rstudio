#Pruebas de hipótesis para la media poblacional
#n>=30
#miu: promedio de ingesta diaria de sodio de los
#estadounidenses
#################################
#Prueba cola a derecha
#1.Ho: miu = 3300
#2.Ha: miu > 3300
mu0 = 3300
#Datos
n = 100 #tamaño de la muestra
media = 3400 #media muestral
desv = 1100 #desviación
alpha = 0.05 #nivel de significancia
#3a.Estadístico de prueba
z = (media-mu0)/(desv/sqrt(n))
z
#3b.Valor p (prueba cola a derecha)
valorp = pnorm(z,lower.tail = FALSE)
valorp
#3c. Método del valor p
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
#5.Conclusión: No rechazo G¿Ho, por lo tanto los
#datos no presentan suficiente evidencia
#para indicar que los estadounidenses están
#excediendo este límite.
###############################################
#Prueba cola a izquierda
#1.Ho: miu = 3300
#2.Ha: miu < 3300
mu0 = 3300
#Datos
n = 100 #tamaño de la muestra
media = 3400 #media muestral
desv = 1100 #desviación
alpha = 0.05 #nivel de significancia
#3a.Estadístico de prueba
z = (media-mu0)/(desv/sqrt(n))
z
#3b.Valor p (prueba cola a derecha)
valorp = pnorm(z,lower.tail = TRUE)
valorp
#3c. Método del valor p
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
#5.Conclusión:
#################################################
#Prueba a dos colas
#1.Ho: miu = 3300
#2.Ha: miu diferente a 3300
mu0 = 3300
#Datos
n = 100 #tamaño de la muestra
media = 3400 #media muestral
desv = 1100 #desviación
alpha = 0.05 #nivel de significancia
#3a.Estadístico de prueba
z = (media-mu0)/(desv/sqrt(n))
z
#3b.Valor p (prueba cola a derecha)
if(z>=0){
  valorp =2*pnorm(z,lower.tail = FALSE)
}else{
  valorp =2*pnorm(z,lower.tail = TRUE)
}
valorp
#3c. Método del valor p
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qnorm(alpha/2,lower.tail = FALSE)
valor_critico
if(z<= -(valor_critico) | z>= valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:
