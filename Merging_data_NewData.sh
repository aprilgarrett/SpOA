#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

#/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_0_S_02_bwamem.sam.bam -in #~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_0_S_02_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam #-o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_0_S_02.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_0_S_03_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_0_S_03_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_0_S_03.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_0_S_04_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_0_S_04_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_0_S_04.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_0_S_05_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_0_S_05_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_0_S_05.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_0_S_08_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_0_S_08_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_0_S_08.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_5_S_01_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_5_S_01_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_5_S_01.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_5_S_03_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_5_S_03_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_5_S_03.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_5_S_04_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_5_S_04_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_5_S_04.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_5_S_05_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_5_S_05_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_5_S_05.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_7_5_S_08_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_7_5_S_08_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_7_5_S_08.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_8_1_S_01_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_8_1_S_01_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp1 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_8_1_S_01.sorted.bam