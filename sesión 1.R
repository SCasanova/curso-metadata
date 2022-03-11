# Sintáxis básica exclusiva de R

# Declaración de variables

numeros <- 1234
numeros2 <- 1234.56
texto1 <- "ejemplo"
texto2 <- 'igual se puede'
booleano <- T
booleano = TRUE
booleano = F
booleano = FALSE

#No-Valores

ejeplo_na <- NA
ejemplo_real <- NA_real_ #complex, integer, character
ejemplo_nan <- NaN
texto1 <- NULL

#Operadores

num_1 <- 20
num_2 <- 3

print(20 + 3)
print(20 - 3)
print(20 * 3)
print(20 / 3)
print(20 ^ 3)
print(20 %% 3)


#Concatenación de valores y listas

c()

c(1,2,3)

primer_vector <- c(1,2,3, 'a', 'b', 'c', NA, NA_real_ ,TRUE)
print(primer_vector)

primer_lista <- list(1,2,3, 'a', 'b', 'c', NA, NA_real_ ,TRUE)
print(primer_lista)

lista_uniforme <- list(1,2,3,24.5, 223212, 5)
print(lista_uniforme)

primer_vector[1] #Indices empiezan en 1 no 0
primer_vector[4]
primer_vector[20]

primer_lista[1]
primer_lista[4]
primer_lista[20]

primer_lista[[1]]

lista_compleja <- list(c(1,2,4, 12873812), c('a', 'b','c','g', 'zh', 'ya'), c(NA, NA_real_, NaN), 201)
lista_compleja

lista_compleja[[1]]
lista_compleja[[1]][2]


mega_lista <- list(c(1,23,4),
                   tibble::tibble(x = c('a','d','f'), y=  c(1,2,3), z  = c(123.4, 22.2, 123)),
                   list(c('ya', 'fue'), 'mucho'),
                   function(x){print(x+1)})

mega_lista[[1]]
mega_lista[[1]][2]

mega_lista[[2]]
mega_lista[[2]][2]
mega_lista[[2]][2,2]

mega_lista[[3]]
mega_lista[[3]][[1]]
mega_lista[[3]][[1]][1]


#Comparadores lógicos

print(20 > 3) # >=
print(20 < 3) # <=
20 == 3
20 != 3

2 %in% primer_vector
20 %in% primer_vector

is.character('2') #Verdadero
is.numeric('2') # Falso
is.factor('2') # Falso (¿Qué es un factor?)
is.na(NA) #Verdadero
is.na(NA_real_) #Verdadero
is.nan(NA) # Falso

#Factores

factores <- factor(c('Segundo', 'Primero', 'Tercero'))
print(factores)
levels(factores)

ordenados <- ordered(factores, c('Tercero', 'Segundo', 'Primero'))
print(ordenados)
levels(ordenados)

factores_niv <- factor(c('Segundo', 'Primero', 'Tercero', 'Segundo', 'Segundo', 'Primero', 'Tercero'), levels = c('Tercero', 'Segundo', 'Primero', 'Cuarto', 'Quinto'))
print(factores_niv)
levels(factores_niv)

# Check y conversion de variables

vector_mixto <- c(1 ,12.5, 'asd', NA, factor('fes'), 32)
vector_mixto
is.character(vector_mixto)
is.numeric(vector_mixto)
is.na(vector_mixto)

is.character(lista_compleja)
is.character(lista_compleja[[2]])

