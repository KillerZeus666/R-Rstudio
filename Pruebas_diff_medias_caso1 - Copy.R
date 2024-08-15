#Pruebas de hipótesis para la diferencia
#medias poblacionales
#Caso 1: Varianzas poblacionales conocidas
#o n1>=30 y n2>=30
#miu1: promedio de calificaciones de los estudiantes 
#que no tienen auto
#miu2: promedio de calificaciones de los estudiantes 
#que tienen auto
#Prueba a dos colas
#1. Ho: miu1-miu2 = 0
#2. Ha: miu1-miu2 diferente a 0
#3a. Estadístico de prueba
#Datos
mu0 = 0
media1 = 2.70
varianza1 = 0.36
n1 = 100
media2 = 2.54
varianza2 = 0.40
n2 = 100
alpha = 0.05
z = (media1-media2-mu0)/sqrt(varianza1/n1+varianza2/n2)
z
#3b.Valor p 
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
#5.Conclusión: No rechazo Ho, los datos no presentan suficiente
#evidencia para indicar una diferencia en el promedio de calificaciones
#para los estudiantes propietarios y no propietarios.
#######################################################
#Prueba cola a derecha
#1. Ho: miu1-miu2 = 0
#2. Ha: miu1-miu2 > 0
#3a. Estadístico de prueba
#Datos
mu0 = 0
media1 = 2.70
varianza1 = 0.36
n1 = 100
media2 = 2.54
varianza2 = 0.40
n2 = 100
alpha = 0.05
z = (media1-media2-mu0)/sqrt(varianza1/n1+varianza2/n2)
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
#5.Conclusión: 
####################################################
#Prueba cola a izquierda
#1. Ho: miu1-miu2 = 0
#2. Ha: miu1-miu2 < 0
#3a. Estadístico de prueba
#Datos
mu0 = 0
media1 = 2.70
varianza1 = 0.36
n1 = 100
media2 = 2.54
varianza2 = 0.40
n2 = 100
alpha = 0.05
z = (media1-media2-mu0)/sqrt(varianza1/n1+varianza2/n2)
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
#5.Conclusión:.....