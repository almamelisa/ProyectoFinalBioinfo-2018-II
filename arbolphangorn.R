#Fijar directorio
setwd("$WORKING_DIR/Melisa_Vazquez_proyecto/bin")
#Instalar paquetes
install.packages("phangorn")
install.packages("magrittr")
install.packages("xtable")
install.packages("ape")
install.packages("phytools")

library("ape")
library("Biostrings")
library("ggplot2")
library("ggtree")

library(xtable)
library(magrittr)
library(phangorn)
library(ape)
library(phytools)

#Cargar alineamiento
nex_pir<-read.nexus.data("../data/Pir_23_85.nex")

#Convertir en formato phyDat 
pirangas<-phyDat(data =  nex_pir, type = "DNA")

#Obtener la matriz de distancia
dm<- dist.ml(pirangas)

#Obtener arboles:

#UPGMA
treeupgma<- upgma(dm)
plot(treeupgma)
class(treeupgma)
X<- c(rep(1,2), rep("red",3,4,5,6), rep("darkmagenta",7,8), rep("blue",9,10), rep(11,12), rep(13,14), rep(15,16,17,18), rep("slateblue",19,20), rep("tomato",21,22), rep("yellow", 23, 24), rep("black",25,26,27,28))

plot.phylo(treeupgma, show.tip.label = TRUE, type = "p", use.edge.length = TRUE, node.pos = 1,font = 4, cex = 0.8,
           show.node.label = TRUE, edge.lty = 1, edge.width=3, tip.color = X)


#Parsimonia

treePars<- optim.parsimony(treeupgma, pirangas)
plot(treePars)
X<- c(rep(1,2), rep("red",3,4,5,6), rep("darkmagenta",7,8), rep("blue",9,10), rep("#00CCCC",11,12), rep("#006600",13,14), rep(15,16,17,18), rep("slateblue",19,20), rep("tomato",21,22), rep("yellow", 23, 24), rep("black",25,26,27,28))

plot.phylo(treePars, show.tip.label = TRUE, type = "p", use.edge.length = TRUE, node.pos = 1,font = 4, cex = 0.8,
           show.node.label = TRUE, edge.lty = 1, edge.width=3, tip.color = X)

#Maxima verosimilitud
#MVsencillo
fit<-pml(treeupgma, data = pirangas)
plot(fit)
fit

#optimizando el largo de las ramas con Jukes Cantor
fitJC<- optim.pml(fit, TRUE)
plot(fitJC)

