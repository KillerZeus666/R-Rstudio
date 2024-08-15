##Ejercicio 7.2.1
#miu: promedio de depuración de creatina pacientes con enfermedad
#maligna distinta de la leucemia
#Prueba cola a izquierda
#1.Ho: miu = 60
#2.Ha: miu < 60
mu0 = 60
#Datos
n = 211 #tamaño de la muestra
media = 59.1 #media muestral
desv = 25.6 #desviación
alpha = 0.10 #nivel de significancia
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
#5.Conclusión: No rechazo Ho, los datos no presentan
#suficiente evidencia para indicar promedio de depuración
#de creatina pacientes con enfermedad es menor que 60

######################
#Ejercicio 7.2.3
#miu:promedio de edad de las mujeres con casos
#de prolapso de cordón umbilical
#1. Ho: miu = 20
#2. Ha: miu > 20
Datos<-c(25,28,17,26,27,22,25,30)
mean(Datos)
sd(Datos)

t.test(Datos,alternative = 'greater',
       mu = 20, conf.level = 0.99)
#Rechazo Ho, valor p < 0.01, por lo tanto
#los datos presentan suficiente evidencia
#para indicar que el promedio de edad
#de mujeres con casos de cordon umbilical es
#mayor a 20 años




