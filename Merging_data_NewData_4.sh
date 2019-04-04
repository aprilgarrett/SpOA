#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_V_12_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_V_12_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_V_12.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_S_13_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_S_13_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_S_13.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_S_14_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_S_14_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_S_14.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_S_15_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_S_15_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_S_15.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_S_18_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_S_18_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_S_18.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_19_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_19_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_19.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_20_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_20_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_20.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_21_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_21_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_21.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_22_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_22_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_22.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_23_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_23_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_23.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_8_1_V_24_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_8_1_V_24_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp4 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_8_1_V_24.sorted.bam