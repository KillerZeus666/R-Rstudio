#Distribución t-Student
n = 24 
#gl = n-1
#P(t>0) = 0.5
pt(0, n-1, lower.tail = FALSE)
#P(t<0) = 0.5
pt(0, n-1, lower.tail = TRUE)
#P(t<2.58) = 0.9916
pt(2.58,n-1,lower.tail = TRUE)
#P(t>-1.11) = 0.8608
pt(-1.11,n-1,lower.tail = FALSE)
#P(t<1.11) = 0.8608
pt(1.11,n-1,lower.tail = TRUE)
#P(t<-1.11)= 0.1392
pt(-1.11,n-1,lower.tail = TRUE)
#P(t>1.11) = 0.1392
pt(1.11,n-1,lower.tail = FALSE)
#P(-1.11<t<1.11) = 0.7215
pt(1.11,n-1,lower.tail = TRUE)-
  pt(-1.11,n-1,lower.tail = TRUE)
##Cuantiles
#¿cuál es el valor de t0, que acumula a la derecha una 
#probabilidad de 0.675?
qt(0.675,n-1,lower.tail = FALSE)
#t0 = -0.4598
qt((1-0.675),n-1, lower.tail = TRUE)
#¿cuál es el valor de t0, que acumula a la izquierda una 
#probabilidad de 0.82?
qt(0.82,n-1,lower.tail = TRUE)
#t0 = 0.9340
#P(t<0.9340132)
pt(0.9340132,n-1,lower.tail = TRUE)
#¿Cuál es el valor de t0 tal que P(-t0<t<t0) = 0.98?
#t0 = 2.4999
qt((1-0.98)/2,n-1,lower.tail = FALSE)
qt((1-0.98)/2,n-1,lower.tail = TRUE)
#¿Cuál es el valor de t0 tal que P(-t0<t<t0) = 0.95?
qt((1-0.95)/2,n-1,lower.tail = FALSE)
qt((1-0.95)/2,n-1,lower.tail = TRUE)
#t0 = 2.0687
###Normal estándar
#z0 tal que P(-z0<Z<z0) = 0.90
#z0 = 1.645
qnorm((1-0.90)/2,lower.tail = FALSE)





