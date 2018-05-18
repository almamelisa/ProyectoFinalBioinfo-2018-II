# Filogenia del género *Piranga* utilizando datos Rad seq






## Avance 3 

### Organización del repositorio y script:
-Se avanzó en el Readme
-Se agregó el master script, la idea es crear un archivo desde Rmarkdown que contenga todos los comandos del proyecto, desde bajar secuencias hasta editar los resultados, para trabajar en lenguaje R o bash.
Link del script: https://github.com/almamelisa/ProyectoFinalBioinfo-2018-II/blob/master/script.Rmd

### Alineamiento preelimar:

Se corrió el programa ipyrad para obtener el alineamiento que se utilizará para generar la filogenia final. Se realizarán tres pruebas para el alineamiento, cambiando el valor de clusting: 0.85, 0.90, 0.95, para elegir el que mejor se ajuste a los datos. Pude obtener el alineamiento para un valor de 0.85, sin embargo, genera un alineamiento con muchas N en los reads y no estoy segura de que se haya construido bien (link del alineamiento: (https://github.com/almamelisa/ProyectoFinalBioinfo-2018-II/blob/master/iptest.nex). Cuando intento obtener el alineamiento para un valor de 0.90 me marca un error de secuencias vacías, a pesar de haber usado los mismos datos.
El siguiente paso es construir un alineamiento enramado como se sugiere en el tutorial: http://ipyrad.readthedocs.io/tutorial_advanced_cli.html
