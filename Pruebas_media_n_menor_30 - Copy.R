#Pruebas de hipótesis para la media poblacional
#n<30
#miu: peso promedio de los diamantes sinteticos
#################################
#Prueba cola a derecha
#1.Ho: miu = 0.5
#2.Ha: miu > 0.5
mu0 = 0.5
#Datos
Datos<-c(0.46,0.61,0.52,0.48,0.57,0.54)
n = length(Datos) #tamaño de la muestra
media = mean(Datos) #media muestral
desv = sd(Datos) #desviación
alpha = 0.05 #nivel de significancia
#3a.Estadístico de prueba
t = (media-mu0)/(desv/sqrt(n))
t
#3b.Valor p (prueba cola a derecha)
valorp = pt(t,n-1,lower.tail = FALSE)
valorp
#3c. Método del valor p
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qt(alpha,n-1,lower.tail = FALSE)
valor_critico
if(t>=valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión: No rechazo Ho, los datos no presentan
#suficiente evidencia para indicar que el peso
#promedio de los diamantes es mayor 0.5 quilates, 
#por lo tanto el proceso no es rentable.



###############################################
#Prueba cola a izquierda
#1.Ho: miu = 
#2.Ha: miu < 
mu0 = 
#Datos
n =  #tamaño de la muestra
media =  #media muestral
desv =  #desviación
alpha =  #nivel de significancia
#3a.Estadístico de prueba
t = (media-mu0)/(desv/sqrt(n))
t
#3b.Valor p (prueba cola a iazquierda)
valorp = pt(t,n-1,lower.tail = TRUE)
valorp
#3c. Método del valor p
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qt(alpha,n-1,lower.tail = TRUE)
valor_critico
if(t<=valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:...
#################################################
#Prueba a dos colas
#1.Ho: miu = 
#2.Ha: miu diferente a 
mu0 = 
#Datos
n =  #tamaño de la muestra
media =  #media muestral
desv =  #desviación
alpha =  #nivel de significancia
#3a.Estadístico de prueba
t = (media-mu0)/(desv/sqrt(n))
t
#3b.Valor p (prueba cola a dos colas)
if(t>=0){
  valorp =2*pt(t,n-1,lower.tail = FALSE)
}else{
  valorp =2*pt(t,n-1,lower.tail = TRUE)
}
valorp
#3c. Método del valor p
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qt(alpha/2,n-1,lower.tail = FALSE)
valor_critico
if(t<= -(valor_critico) | t>= valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:

###############################################
#nivel de signifancia: alpha
#nivel de confianza es: 1-alpha
t.test(Datos,alternative = 'greater',mu= 0.5,conf.level = 0.95)








