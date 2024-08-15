#Pruebas de hipótesis para la diferencia
#medias poblacionales
#Caso 4: Muestras dependientes
#miu1: promedio de horas que tardan en levantarse sin poción
#miu2: promedio de horas que tardan en levantarse con poción
#1.Ho: miu1-miu2 = 0
#2.Ha: miu1-miu2 > 0
#Prueba cola a derecha
#Datos
Datos1<-c(38,32,41,35,42,32,45,37)
Datos2<-c(30,32,34,37,35,26,38,32)
t.test(Datos1,Datos2, alternative = 'greater',mu = 0,
       paired = 'TRUE')
#Conclusión: Como el valorp < 0.05 entonces rechazo Ho, por lo 
#tanto los datos presentan suficiente evidencia para indicar
#que la nueva poción mágica es efectiva.
##################################################
#Prueba cola a derecha
#1.Ho: miu1-miu2 = 0
#2.Ha: miu1-miu2 > 0
#Datos
mu0 = 0
Diferencias = Datos1-Datos2
media = mean(Diferencias)
desv = sd(Diferencias)
n = length(Diferencias)
alpha = 0.05
#3a.Estadístico de prueba
t =(media-mu0)/(desv/sqrt(n))
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
#5.Conclusión:....
###################################################
#1.Ho: miu1-miu2 = 0
#2.Ha: miu1-miu2 < 0
#Prueba cola a izquierda
#Datos
mu0 = 0
Diferencias = Datos1-Datos2
media = mean(Diferencias)
desv = sd(Diferencias)
n = length(Diferencias)
alpha = 0.05
#3a.Estadístico de prueba
t =(media-mu0)/(desv/sqrt(n))
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
###########################################
#1.Ho: miu1-miu2 = 0
#2.Ha: miu1-miu2 diferente a 0
#Prueba cola a dos colas
#Datos
mu0 = 0
Diferencias = Datos1-Datos2
media = mean(Diferencias)
desv = sd(Diferencias)
n = length(Diferencias)
alpha = 0.05
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
