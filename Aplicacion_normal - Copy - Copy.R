#Distribución Normal
#Se ha comprobado que el tiempo que tardan los contribuyentes en diligenciar 
#el formulario para la declaración de renta sigue una distribución normal 
#con media 100 minutos y desviación estándar 30 minutos.
#X: tiempo que tardan los contribuyentes en diligenciar el formulario
#a)¿Cuál es la probabilidad de un contribuyente elegido al azar tarde entre
#73 y 130 minutos en diligenciar este formulario?
#P(73<X<130) = 0.6827
pnorm(130,mean = 100,sd =30,lower.tail = TRUE)-
  pnorm(73,mean = 100,sd =30,lower.tail = TRUE)  
#b)Halle el valor de k tal que el 5% de los contribuyentes tarda más de k
#minutos en diligenciar el formulario.
qnorm(0.05, mean = 100,sd =30,lower.tail =FALSE)
#El 5% de los contribuyentes tardan más de 149.3456 minutos en llenar el
#formulario
#c)Se eligen 50000 contribuyentes al azar. ¿Aproximadamente cuántos tardan 
#más de 1 hora en diligenciar el formulario?
#P(X>60)
pnorm(60,mean = 100,sd =30,lower.tail = FALSE)*50000
#Aproximadamente 45439 personas tardan más de una hora en llenar el 
#formulario de esa muestra de 50000
#d)Se eligen 2 contribuyentes al azar. ¿Cuál es la probabilidad que
#tarden más de 2 horas en diligenciar el formulario?
#P(X1>120 n X2>120) = P(X1>120)*P(X>120) = 0.0638
pnorm(120, mean = 100,sd =30,lower.tail = FALSE)**2 
