#Pruebas de hipótesis para la diferencia
#medias poblacionales
#Caso 3: Varianzas poblacionales desconocidas
#y diferentes
#miu1: promedio de contenido de hierro para análisis
#rayos X
#miu2: promedio de contenido de hierro para análisis
#quimico
#Prueba a dos colas
#1. Ho: miu1-miu2 = 0
#2. Ho: miu1-miu2 diferente a 0
Datos1<-c(2,2,2.3,2.1,2.4)
Datos2<-c(2.2,1.9,2.5,2.3,2.4)
t.test(Datos1,Datos2,alternative = 'two.sided',mu=0, conf.level = 0.95,
       var.equal = FALSE)
#Valor p = 0.4688 >alpha = 0.05, no rechazo Ho, los datos presentan 
#suficiente evidencia para indicar que los dos métodos dan el mismo 
#resultado.
#################################################
#Prueba a dos colas
#1. Ho: miu1-miu2 = 0
#2. Ho: miu1-miu2 diferente a 0
mu0 = 0
media1 = mean(Datos1)
varianza1 = var(Datos1)
n1 = length(Datos1)
media2 = mean(Datos2)
varianza2 = var(Datos2)
n2 = length(Datos2)
alpha = 0.05
#3a. Estadístico de prueba
t = (media1-media2-mu0)/sqrt(varianza1/n1+varianza2/n2)
t
#3b.Valor p 
gl = (varianza1/n1+varianza2/n2)**2/(((varianza1/n1)**2/(n1-1))+((varianza2/n2)**2/(n2-1)))
gl
if(t>=0){
  valorp =2*pt(t,gl,lower.tail = FALSE)
}else{
  valorp =2*pt(t,gl,lower.tail = TRUE)
}
valorp
#3c. Método del valor p
if(valorp <= alpha){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#4.Región de rechazo
valor_critico = qt(alpha/2,gl,lower.tail = FALSE)
valor_critico
if(t<= -(valor_critico) | t>= valor_critico){
  'Rechazo Ho'
}else{
  'No rechazo Ho'
}
#5.Conclusión:

