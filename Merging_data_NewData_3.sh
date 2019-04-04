#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_V_04_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_V_04_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_V_04.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_V_05_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_V_05_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_V_05.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_V_06_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_V_06_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_V_06.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_S_31_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_S_31_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_S_31.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_S_32_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_S_32_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_S_32.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_S_33_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_S_33_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_S_33.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_S_36_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_S_36_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_S_36.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_V_07_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_V_07_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_V_07.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_V_08_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_V_08_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_V_08.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_V_09_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_V_09_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_V_09.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_5_V_10_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_5_V_10_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp3 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_5_V_10.sorted.bam