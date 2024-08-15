#Distribución Poisson
#media = 1.5
#X=0,1,2,3,...
#P(X=0): probabailidad de que no ocurra ningún éxito
dpois(0,1.5)
#P(X=7): probabilidad de tener 7 éxitos (periodo o espacio)
dpois(7,1.5)#0.0008
#¿Cuál es la probabilidad de tener al menos 5 éxitos?
#P(X>=5)
1-sum(dpois(0:4,1.5))
1-ppois(4,1.5)
#¿Cuál es la probabilidad de tener máximo 8 éxitos?
#P(X<=8)
ppois(8,1.5)
sum(dpois(0:8,1.5))
#¿Cuál es la probabilidad de tener entre 4 y 11 éxitos?
#P(4<X<11)
ppois(10,1.5)-ppois(4,1.5)
sum(dpois(5:10,1.5))
#P(4<=X<=11)
sum(dpois(4:11,1.5))
##Ejemplo 1:
#X: numero de accidentes en un cruce en una semana
#media: 2 (1 semana)
#P(X=0)
dpois(0,2)
#P(X<=3)
#media: 2*2 (2 semanas)
ppois(3,4)
#Varianza: media = 2
#Desviacion: 1.4142
sqrt(2)
#Ejemplo 2: 
#X_ número de veces al día que se solicita
#un artículo
#media = 5
#P(X>5)
1-ppois(5,5)
#P(X=0)
ppois(0,5)
