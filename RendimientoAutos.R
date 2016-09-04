library(ggplot2)
# Utilizamos el data frame mpg (?mpg) y obtenemos informacion sobre dicho objeto.
cat("Primeras observaciones:\n"); head(mpg)
cat("Estructura de los datos:\n"); str(mpg)
cat("Estadisticas descriptivas:\n"); summary(mpg)
cat("Numero de valores faltantes:\n"); sum(is.na(mpg))
# Relacion entre millas por galon (autopista) y el tamanio del motor.
ggplot(mpg, aes(displ, hwy, colour = drv)) +
  geom_point() +
  labs(title = "Relacion numero de millas por galon (autopista) vs tamanio del motor",
       x = "Tamanio del motor",
       y = "Numero de millas recorridas por galon en carretera",
       colour = "Traccion") +
  theme_bw()