library(ggplot2)
# Utilizamos el data frame mpg (?mpg) y obtenemos informacion sobre dicho objeto.
source("./Funciones/ObtenerInformacion.R"); GenerarResumen(mpg)
# Relacion entre millas por galon (autopista) y el tamanio del motor.
ggplot(mpg, aes(displ, hwy, colour = drv)) +
  geom_point() +
  labs(title = "Relacion numero de millas por galon (autopista) vs tamanio del motor",
       x = "Tamanio del motor",
       y = "Numero de millas recorridas por galon en carretera",
       colour = "Traccion") +
  theme_bw()
# Distribucion de millas por galon por numero de cilindros.
ggplot(mpg, aes(as.factor(cyl), hwy, color = as.factor(cyl))) +
  geom_boxplot(colour = "blue") +
  geom_jitter() +
  labs(title = "Distribucion de millas por galon en carretera por numero de cilindros",
       x = "Numero de cilindros",
       y = "Numero de millas recorridas por galon en carretera",
       colour = "Traccion") +
  guides(colour = FALSE) +
  theme_bw()