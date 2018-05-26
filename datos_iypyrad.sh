#./bash

#Definir variable de ruta
$WORKING_DIR= your/working/directory

#1.Instalar las funciones toolkit, se bajó toolkit del siguiente link: https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.0/sratoolkit.2.9.0-mac64.tar.gz en la ubicación $WORKING_DIR/Melisa_Vazquez_proyecto.
#Descomprimir archivo:

pwd
tar -xzvf  sratoolkit.2.9.0-mac64.tar.gz

#2. Bajar secuencias en formato sra. En la ubicación: 

cd $WORKING_DIR/Melisa_Vazquez_proyectosratoolkit.2.9.0-mac64/bin
./prefetch --option-file ../../SRR_Acc_List.txt

#3. Convertir archivos sra en fastq
#sratoolkit generalmente genera la carpeta ncbi en el home de usuario
$tuhome=tu/home/
cd /Users/BEHB/Desktop/trabajo_final/sratoolkit.2.9.0-mac64/bin
./fastq-dump --split-files $tuhome/ncbi/public/sra/*.sra -O ../../data/fastq/

#4. Instalar ipyrad 
cd $WORKING_DIR/Melisa_Vazquez_proyecto
curl -O https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh
bash Miniconda2-latest-MacOSX-x86_64.sh
source ~/.bash_profile
conda info
conda update conda
conda install -c ipyrad ipyrad
ipyrad

#5. Generar documento de parámetros en ipyrad:
-ipyrad -n params_piranga.txt

#Modificar:
#------- ipyrad params file (v.0.7.9)--------------------------------------------
#iptest                         ## [0] [assembly_name]: Assembly name. Used to name output directories for assembly steps
#$WORKING_DIR/Melisa_Vazquez_trabajo_final/bin/alineamiento## [1] [project_dir]: Project dir (made in curdir if not present)
#                              ## [2] [raw_fastq_path]: Location of raw non-demultiplexed fastq files
#                              ## [3] [barcodes_path]: Location of barcodes file
#$WORKING_DIR/Melisa_Vazquez_trabajo_final/data/fastq/*.fastq ## [4] [sorted_fastq_path]: Location of demultiplexed/sorted fastq files
#denovo                         ## [5] [assembly_method]: Assembly method (denovo, reference, denovo+reference, denovo-reference)
#                               ## [6] [reference_sequence]: Location of reference sequence file
#rad                            ## [7] [datatype]: Datatype (see docs): rad, gbs, ddrad, etc.
#TATG                         ## [8] [restriction_overhang]: Restriction overhang (cut1,) or (cut1, cut2)
#10                              ## [9] [max_low_qual_bases]: Max low quality base calls (Q<20) in a read
#33                             ## [10] [phred_Qscore_offset]: phred Q score offset (33 is default and very standard)
#6                              ## [11] [mindepth_statistical]: Min depth for statistical base calling
#6                              ## [12] [mindepth_majrule]: Min depth for majority-rule base calling
#10000                          ## [13] [maxdepth]: Max cluster depth within samples
#0.85                           ## [14] [clust_threshold]: Clustering threshold for de novo assembly
#0                              ## [15] [max_barcode_mismatch]: Max number of allowable mismatches in barcodes
#2                              ## [16] [filter_adapters]: Filter for adapters/primers (1 or 2=stricter)
#35                             ## [17] [filter_min_trim_len]: Min length of reads after adapter trim
#2                              ## [18] [max_alleles_consens]: Max alleles per site in consensus sequences
#5                           ## [19] [max_Ns_consens]: Max N's (uncalled bases) in consensus (R1, R2)
#6                           ## [20] [max_Hs_consens]: Max Hs (heterozygotes) in consensus (R1, R2)
#30                              ## [21] [min_samples_locus]: Min # samples per locus for output
#20                         ## [22] [max_SNPs_locus]: Max # SNPs per locus (R1, R2)
#8, 8                           ## [23] [max_Indels_locus]: Max # of indels per locus (R1, R2)
#0.5                            ## [24] [max_shared_Hs_locus]: Max # heterozygous sites per locus (R1, R2)
#4, 91                    ## [25] [trim_reads]: Trim raw read edges (R1>, <R1, R2>, <R2) (see docs)
#0, 5                    ## [26] [trim_loci]: Trim locus edges (see docs) (R1>, <R1, R2>, <R2)
#p, s, v, n,k                        ## [27] [output_formats]: Output formats (see docs)
#                               ## [28] [pop_assign_file]: Path to population assignment file

#6. Correr ipyrad
-ipyrad -p params_piranga.txt -s 1234567
