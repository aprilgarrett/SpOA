#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_8_1_S_03_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_8_1_S_03_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_8_1_S_03.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_8_1_S_05_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_8_1_S_05_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_8_1_S_05.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D1_8_1_S_08_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D1_8_1_S_08_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D1_8_1_S_08.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_25_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_25_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_25.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_26_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_26_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_26.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_27_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_27_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_27.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_28_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_28_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_28.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_29_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_29_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_29.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_S_30_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_S_30_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_S_30.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_V_02_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_V_02_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_V_02.sorted.bam

/users/r/b/rbrennan/bin/bamtools/bamtools merge -in ~/RESEARCH/SpOA/data/mapped/SpOA_DNA_D7_7_0_V_03_bwamem.sam.bam -in ~/RESEARCH/SpOA/NewData/mapped/SpOA_DNA_D7_7_0_V_03_bwamem.sam.bam | /users/r/b/rbrennan/bin/samtools-1.6/samtools sort - -T ./temp2 -O bam -o ~/RESEARCH/SpOA/combined_data/mapped/SpOA_DNA_D7_7_0_V_03.sorted.bam