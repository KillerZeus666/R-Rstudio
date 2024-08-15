#Variables aleatorias discretas
#media
media = 0*0.1+1*0.4+2*0.2+3*0.15+4*0.1+5*0.05
media
varianza = (0-media)^2*0.1+(1-media)^2*0.4+(2-media)^2*0.2+
  (3-media)^2*0.15+(4-media)^2*0.1+(5-media)^2*0.05
varianza
desviacion = sqrt(varianza)
desviacion

##Distribución Binomial
#La última novela de un autor científico ha tenido un gran éxito, 
#hasta el punto de que el 80% de los lectores ya la han leído.
#Un grupo de 4 amigos son aficionados a la lectura: 
#a). ¿Cuál es la probabilidad de que en el grupo de estos 4 amigos 
#hayan leído la novela 2 personas? 
#p= 0.8
#a)P(X=2)
dbinom(2,4,0.8) #0.1536
#b)¿Y como máximo 2? 
#b) P(X<=2)
pbinom(2,4,0.8) #0.1808
#c) ¿Cuál es el número esperado de personas que han leído 
#el libro en este grupo de cuatro?
media = 4*0.8
media
#¿Cuál es su desviación estándar?
varianza = 4*0.8*0.2
desviacion = sqrt(varianza)
desviacion
