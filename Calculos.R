mediciones <- c(0.84, 0.85, 0.94, 0.96, 0.98, 0.80)

promedio_observado <- mean(mediciones)


n_remuestreos <- 10000

set.seed(1000)
bootstrap_promedios <- replicate(n_remuestreos, mean(sample(mediciones, length(mediciones), replace = TRUE)))

error_estandar_bootstrap <- sd(bootstrap_promedios)

cat("Error estándar estimado mediante Bootstrap:", error_estandar_bootstrap, "\n")

promedio_aplicacion <- 0.9330
diferencia <- promedio_aplicacion - promedio_observado

cat("Diferencia entre el promedio observado y el de la aplicación:", diferencia, "\n")

proporcion <- mean(abs(bootstrap_promedios - promedio_aplicacion) > abs(diferencia))
cat("Proporción de muestras bootstrap donde la diferencia es mayor que la observada:", proporcion, "\n")
