#Distribución Geometrica
#X:número de intentos antes del primer exito
#p = 2/3: probabilidad de exito
#P(X=7)
dgeom(7,2/3)
#Ejemplo 2: La probabilidad de que Leo Messi 
#acierte un penal es de 0.93. Con base en la
#información, determine la probabilidad de que 
#falle su 5to penal cobrado
#p = 1-0.93
p = 1-0.93
#P(X=4)
dgeom(4,0.07)
#promedio:
media = 1/p
#Varianza
varianza =(1-p)/(p^2)
#desviacion 
desviacion =sqrt(varianza)
