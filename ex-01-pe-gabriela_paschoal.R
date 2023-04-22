# EXERCICIO 01 DE PROCESSOS ESTOCASTICOS
# 2023/1
# Gabriela Paschoal 
# 201965038AD

library(MASS)
set.seed(666)

# Definir os parametros do processo

n <- 5 # (5 anos)
mu <- 100 + 0.5 * (1:n) # Gera o vetor das medias

# Gerar a matriz de correlacoes e covariancias

C <- matrix(10 * exp(-abs(outer(1:n, 1:n, "-"))), n, n) 
C

# Gerar uma realização do processo

x <- mvrnorm(1, mu = mu, Sigma = C) # Vao ser gerados 5 valores aleatorios da normal multivariada

# Plotar a realização do processo

plot(1:n, x, type = "l", xlab = "Tempo", ylab = "Volume de produção",
     main = "Realização do processo normal")