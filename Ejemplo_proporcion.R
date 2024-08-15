#Ejemplo:
#p:porporción de adultos de más de 40 años que participan en actividades
#de acondicionameinto físico
#Prueba cola a izquierda
#1.Ho:p = 0.2
#2.Ha:p < 0.2
p0 = 0.20
q0 = 1-p0  
#Datos
x = 15 #número de éxitos
n = 100#tamaño de la muestra 
p_gorro = x/n #proporción muestral 
alpha = 0.05
#3a. Estadístico de prueba  
z = (p_gorro-p0)/sqrt(p0*q0/n)
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
#5.Conclusión:No rechazo Ho, por lo tanto los datos no presentan 
#suficiente evidencia para indicar que el porcentaje de participación
#es menor al 20%.