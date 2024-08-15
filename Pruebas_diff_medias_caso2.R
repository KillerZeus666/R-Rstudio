#Pruebas de hipótesis diferencia de medias
#Caso 2:
#Datos
#Curso virtual
x<-c(32,37,35,28,41,44,35,31,34)
#Curso presencial
y<-c(35,31,29,25,34,40,27,32,31)
#mu1: promedio de calificaciones curso virtual
#mu2: promedio de calificaciones curso presencial
#Ho: mu1-mu2=0
#Ha: mu1-mu2>0
t.test(x,y,mu = 0,alternative = 'greater',
       var.equal = TRUE,conf.level = 0.95)
#Valor p = 0.05927 > alpha = 0.05, no rechazo Ho
#Conclusión: Los datos no presentan suficiente evidencia
#para indicar que los estudiantes que tomaron 
#el curso virtual tienen en promedio calificaciones mayores
#que los que asistieron presencialmente.