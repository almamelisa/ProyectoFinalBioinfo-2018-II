#Filogenia del género *Piranga* utilizando datos Rad seq






##Avance 2 Trabajo final

Mis avances se dividen en 3:

1. Obtener datos y entender como están organizados

> -- Para lo cual los tengo que bajar del proyecto: BioProject ID PRJNA296706.https://www.ncbi.nlm.nih.gov/bioproject/296706 

Hecho.

>-- Revisar si estos datos son crudos o están preprocesados.

Hecho: son datos sin procesar.

>-- Se obtuvo la información de barcodes y enzimas de restricción:

 Los barcodes se encuentran en el link https://datadryad.org/resource/doi:10.5061/dryad.j5n06/11?show=full
 
 Enzima de restricción: restriction enzyme NdeI
 

ii. Sofware de procesamiento:

>-- Se leyó el instructivo de ipyrad para distinguir pasos y parámetros necesarios para correr el programa:

http://ipyrad.readthedocs.io/outline.html
http://ipyrad.readthedocs.io/parameters.html

Se revisaron los siguientes tutoriales:

http://ipyrad.readthedocs.io/tutorial_intro_cli.html
http://ipyrad.readthedocs.io/tutorial_advanced_cli.html

>-- Se montarion los  datos en el dockerfile de ipyrad  y corrieron los tutoriales de prueba de ipyrad:

Link dockerfile: https://hub.docker.com/r/lipcomputing/ipyrad/
docker run -it -v /home/melisa/trabajo_final/:/home/test lipcomputing/ipyrad /bin/bash

 
iii. Artículos leídos:

>1. Manthey, J.D., Campillo, L.C., Burns, K.J. and Moyle, R.G., 2016. Comparison of Target-capture and Restriction-site Associated DNA Sequencing for Phylogenomics: a Test in Cardinalid Tanagers (Aves, Genus: Piranga). Systematic Biology, Volume 65, Issue 4, 1 July 2016, Pages 640–650, https://doi.org/10.1093/sysbio/syw005
>2. Eaton, D. A. R. (2014). PyRAD: Assembly of de novo RADseq loci for phylogenetic analyses. Bioinformatics, 30(13). https://doi.org/10.1093/bioinformatics/btu121
>3. Leach??, A. D., Chavez, A. S., Jones, L. N., Grummer, J. A., Gottscho, A. D., and Linkem, C. W. (2015). Phylogenomics of phrynosomatid lizards: Conflicting signals from sequence capture versus restriction site associated DNA sequencing. Genome Biology and Evolution, 7(3), 706–719. https://doi.org/10.1093/gbe/evv026
4. Dacosta, J. M., & Sorenson, M. D. (2016). Molecular Phylogenetics and Evolution presence – absence polymorphisms : Analyses of two avian genera with contrasting histories q. Molecular Phylogenetics and Evolution, 94, 122–135. https://doi.org/10.1016/j.ympev.2015.07.026

