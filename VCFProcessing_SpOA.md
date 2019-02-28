### SNP CALLING ###

############ MAKING A FIRST-PASS VCF FILES WITH SAMTOOLS ############

## Running in /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

## SNPCalling_CombinedData_Samtools.sh
```
#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

/data/programs/samtools-1.4.1/samtools mpileup -u -t DP,AD,INFO/AD -f /users/a/m/amakukho/RESEARCH/OASV2/Spur_3.1.LinearScaffold.fa complete.merged.sorted.bam | /data/programs/bcftools/bin/bcftools call -mv > SpOA_combined_samtools_v1.vcf

```

## SNPCalling_CombinedData_Samtools.sh (RE-DO NOW THAT SORTING WAS FULLY COMPLETED AFTER INCREASE IN SERVER SPACE)
```
#!/bin/bash

cd /users/a/m/amakukho/RESEARCH/SpOA/combined_data/mapped

/data/programs/samtools-1.4.1/samtools mpileup -u -t DP,AD,INFO/AD -f /users/a/m/amakukho/RESEARCH/OASV2/Spur_3.1.LinearScaffold.fa complete.merged.sorted.bam | /data/programs/bcftools/bin/bcftools call -mv > SpOA_combined_samtools_v1.vcf

```