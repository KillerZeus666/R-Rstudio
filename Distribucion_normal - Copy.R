#Distribución Normal estándar
#Z media = 0,sd = 1
#P(Z>=0)P(Z>0)= 0.5
pnorm(0,mean = 0,sd =1,lower.tail = FALSE)
x<-seq(-3,3,length=100)
y<-dnorm(x,mean=0, sd=1)
plot(x, y, type="l", xlab="Desviación estándar", ylab="Densidad",
     main="Plot de Densidad", lty = 1, lwd = 3, yaxs="i") # yaxs="i" localiza en el eje el límite del dato
polygon(c(x[x >= 0.0], 0), c(dnorm(x[x >= 0]), 0), col="pink")
text(0, .1,"0.5")
#P(Z<-1.32)
pnorm(-1.32,mean = 0,sd=1, lower.tail = TRUE)
plot(x, y, type="l", xlab="Desviación estándar", ylab="Densidad",
     main="Plot de Densidad", lty = 1, lwd = 3, yaxs="i") # yaxs="i" localiza en el eje el límite del dato
polygon(c(x[x <= -1.32], -1.32), c(dnorm(x[x <= -1.32]), 0), col="yellow")
text(0, .1,"0.0934")
#P(-1.11<Z<1.47) = 0.7957
pnorm(1.47,mean = 0,sd =1,lower.tail = TRUE)-pnorm(-1.11,mean =0,sd=1,lower.tail = TRUE)
pnorm(-1.11,mean=0,sd=1,lower.tail = FALSE)-
  pnorm(1.47,mean=0,sd =1,lower.tail = FALSE)
plot(x, y, type="l", xlab="Desviación estándar", ylab="Densidad",
     main="Plot de Densidad", lty = 1, lwd = 3, yaxs="i")
polygon(c(x[x <= 1.47 & x>=-1.11],1.47,-1.11),
        c(dnorm(x[x <= 1.47 & x>=-1.11]), 0,0), col="yellow")

###Normal con media=10 y desviacion estándar = 2.5
#P(12<X<15) = 1.1891
pnorm(15,mean = 10,sd=2.5,lower.tail = TRUE)-
  pnorm(12,mean = 10,sd=2.5,lower.tail = TRUE)
x<-seq(0,17,length=100)
y<-dnorm(x,mean=10, sd=2.5)
plot(x, y, type="l", xlab="Desviación estándar", ylab="Densidad",
     main="Plot de Densidad", lty = 1, lwd = 3, yaxs="i")
polygon(c(x[x <= 15 & x>=12],15,12),
        c(dnorm(x[x <= 15 & x>=12],mean=10,sd=2.5), 0,0), col="pink")

#P(X>10) =0.5
pnorm(10,mean = 10,sd=2.5,lower.tail = FALSE)
#P(X<11) = 0.6554
pnorm(11,mean = 10,sd=2.5,lower.tail = TRUE)
#P(9<X<12) = 0.4436
pnorm(12,mean = 10,sd=2.5,lower.tail = TRUE)-
  pnorm(9,mean = 10,sd=2.5,lower.tail = TRUE)
#Cuantiles
#¿Cuál es el valor X_0 tal que la probabilidad a la derecha de X_0 es 0.95?
x0 = qnorm(0.95,mean = 10,sd = 2.5, lower.tail = FALSE)
x0
qnorm(0.05,mean = 10,sd = 2.5, lower.tail = TRUE)
#Ejemplo 1: X:distancia necesaria de frenado hasta
#deternse por completo
#Normal con media = 50 y desviacion = 8
#a) P(X<=40) = 0.1056 
pnorm(40,mean= 50, sd =8,lower.tail = TRUE)
#a) P(X<=50) = 0.5
pnorm(50,mean= 50, sd =8,lower.tail = TRUE)
#b) P(X<60) = 0.8944
pnorm(60,mean= 50, sd =8,lower.tail = TRUE)
