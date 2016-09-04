library(ggplot2)
# Utilizamos el data frame mpg (?mpg) y obtenemos informacion sobre dicho objeto.
cat("Primeras observaciones:\n"); head(mpg)
cat("Estructura de los datos:\n"); str(mpg)
cat("Estadisticas descriptivas:\n"); summary(mpg)
cat("Numero de valores faltantes:\n"); sum(is.na(mpg))
