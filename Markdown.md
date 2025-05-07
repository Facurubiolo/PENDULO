---
title: "Pendulo trabajo"
output: html_document
---

## ***Datos de 45 grados y 20 cm***

```{r}
# Ejemplo de seis mediciones
mediciones <- c(0.84, 0.85, 0.94, 0.96, 0.98, 0.80)

# Promedio de las mediciones observadas
promedio_observado <- mean(mediciones)

# Número de remuestreos bootstrap
n_remuestreos <- 10000

# Crear muestras bootstrap y calcular los promedios
set.seed(123) # Para reproducibilidad
bootstrap_promedios <- replicate(n_remuestreos, mean(sample(mediciones, length(mediciones), replace = TRUE)))


error_estandar_bootstrap <- sd(bootstrap_promedios)

# Mostrar el error estándar bootstrap
cat("Error estándar estimado mediante Bootstrap:", error_estandar_bootstrap, "\n")


cat("Diferencia entre el promedio observado y el de la aplicación:", diferencia, "\n")


```

## ***Datos de 45 grados y 30 cm***

```{}
```
