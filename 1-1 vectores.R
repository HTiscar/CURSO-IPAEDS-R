# Introducción: Existen diferentes estructuras de datos en los cuales R puede trabajar.
# Las más importantes son: variables, vectores, matrices y dataframes. 

a <- 5
b <- 7
c <- a + b

# Las variables pueden tener diferentes tipos de datos. Existen los objetos numericos 
# y los objectos tipo de letras. 

typeof(a)

nombre <- "Peter"
typeof(nombre)

# Los objetos solo se pueden sumar en sus mismos tipos. Para este tipo de operaciones 
# utilizamos funciones. 

apellido <- "Smith"
paste(nombre, apellido)

nombre_completo <- paste(nombre, apellido)

# Las funciones tienen diferentes parametros que alteran la manera en que funcionan. 

paste(apellido, nombre)
paste(apellido, nombre, sep = " ")
paste(apellido, nombre, sep = "")
paste(apellido, nombre, sep = ", ")

runif(3)
runif(n = 5)
runif(n = 5, min = 1, max = 10)

# Cuando tenemos muchos elementos, es el momento en donde vamos a empezar a usar vectores.

numeros <- runif(n = 5, min = 1, max = 10)
numeros

round(numeros, digits = 0)
round(numeros)

ceiling(numeros)
floor(numeros)

numeros
numeros <- round(numeros, digits = 0)

# Los vectores pueden combinar diferentes tipos de objetos, pero esto es una practica común. 

alumno_calificacion <- c("Peter Smith", 10)

typeof(alumno_calificacion)
alumno_calificacion[1]
alumno_calificacion[2]

typeof(alumno_calificacion[1])
typeof(alumno_calificacion[2])

rm(alumno_calificacion)

# En otros lenguajes, les vectores se les conocen como listas, y son más estrictos en 
# los tipos de elementos que conforman la lista. 

alumnos <- c("Peter Smith", "Tom Holland", "Angelina Jolie", "Meryl Streep", "Margot Robbie")

calificaciones <- runif(n = 5, min = 1, max = 10)
calificaciones <- round(calificaciones, digits = 0)

mean(calificaciones)
max(calificaciones)

alumnos
calificaciones

# Aquí es donde se puede aprovechar la estructura de datos del dataframe
# El dataframe se le reconoce por tener la estructura y propiedades de una tabla de Excel

data.frame(Alumno = alumnos, Calificacion = calificaciones)

datos <- data.frame(Alumno = alumnos, Calificacion = calificaciones)

summary(datos)

mean(datos)

# Podemos accesar a la información del dataframe utilizando indice como se hacia en 
# los vectores 

datos[1, 1]
datos[1, 2]

datos[1, ]
datos[, 1]

# El primer indice representa la fila y el segundo indica la columna. Otra forma común de 
# accesar a las columnas es usando el simbolo de "$".

datos$Alumno
datos$Calificacion

# Esto se le conoce como indexing y es util cuando queremos realizar operaciones sobre las columnas 

mean(datos[, 2])
mean(datos$Calificacion)

# Los condicionales son formas para encontrar aquellos datos que buscamos

calificacion_aprobatoria <- 6

if(datos$Calificacion[1] >= calificacion_aprobatoria){
  print(paste(datos$Alumno[1], "Aprobo"))
} else{
  print(paste(datos$Alumno[1], "Reprobo"))
}

if(datos$Calificacion[2] >= calificacion_aprobatoria){
  print(paste(datos$Alumno[2], "Aprobo"))
} else{
  print(paste(datos$Alumno[2], "Reprobo"))
}

if(datos$Calificacion[3] >= calificacion_aprobatoria){
  print(paste(datos$Alumno[3], "Aprobo"))
} else{
  print(paste(datos$Alumno[3], "Reprobo"))
}

if(datos$Calificacion[4] >= calificacion_aprobatoria){
  print(paste(datos$Alumno[4], "Aprobo"))
} else{
  print(paste(datos$Alumno[4], "Reprobo"))
}

if(datos$Calificacion[5] >= calificacion_aprobatoria){
  print(paste(datos$Alumno[5], "Aprobo"))
} else{
  print(paste(datos$Alumno[5], "Reprobo"))
}

# Podemos guardar la información dentro de un vector 
status_aprobado <- c()

if(datos$Calificacion[1] >= calificacion_aprobatoria){
  status_aprobado <- c(status_aprobado, "Aprobado")
} else{
  status_aprobado <- c(status_aprobado, "Reprobado")
}

if(datos$Calificacion[2] >= calificacion_aprobatoria){
  status_aprobado <- c(status_aprobado, "Aprobado")
} else{
  status_aprobado <- c(status_aprobado, "Reprobado")
}

if(datos$Calificacion[3] >= calificacion_aprobatoria){
  status_aprobado <- c(status_aprobado, "Aprobado")
} else{
  status_aprobado <- c(status_aprobado, "Reprobado")
}

if(datos$Calificacion[4] >= calificacion_aprobatoria){
  status_aprobado <- c(status_aprobado, "Aprobado")
} else{
  status_aprobado <- c(status_aprobado, "Reprobado")
}

if(datos$Calificacion[5] >= calificacion_aprobatoria){
  status_aprobado <- c(status_aprobado, "Aprobado")
} else{
  status_aprobado <- c(status_aprobado, "Reprobado")
}

datos$Status_Aprobado <- status_aprobado

datos
