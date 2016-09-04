GenerarResumen <- function(d_f){
  cat("Primeras observaciones:\n"); print(head(d_f))
  cat("Estructura de los datos:\n"); str(d_f)
  cat("Estadisticas descriptivas:\n"); print(summary(d_f))
  cat("Numero de valores faltantes:\n"); sum(is.na(d_f))
}