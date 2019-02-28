I am going to try the variant filters that Reid had in his original script for the original urchin MS, as I tried this before with the first half of this data and it appeared my depth was too low. This document is meant to log all of the different combinations of parameters that I am using for vcftools to filter the SpOA_combined_samtools_v1.vcf file that I just created.


# ATTEMPT 1 (same parameters as Reid's original):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50 --max-missing 1

After filtering, kept 44 out of 44 Individuals -----------> GOOD NEWS THAT THE DATA COMBINED OKAY (should only be 44 samples)
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!


# ATTEMPT 2 (removing max-missing criteria): SCREEN 29762.pts-7.pespenilab
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!



# ATTEMPT 3 (removing min-meanDP 50 criteria):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --max-missing 1

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!



# ATTEMPT 4 (removing --minDP 40):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 50 --max-missing 1

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!


# ATTEMPT 5 (removing all depth AND max-missing criteria):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels

After filtering, kept 44 out of 44 Individuals
After filtering, kept 6156979 out of a possible 11896369 Sites


# ATTEMPT 5.5 (removing all depth criteria, BUT keeping max-missing 1):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --max-missing 1

After filtering, kept 44 out of 44 Individuals
After filtering, kept 97080 out of a possible 11896369 Sites

```
CLEARLY, THE MAX-MISSING 1 CRITERIA REMOVES ~99% OF THE DATA
```

# ATTEMPT 6 (removing min-meanDP AND max-missing criteria, leaving minDP 40)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40

--vcf /users/a/m/amakukho/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf
--maf 0.01
--max-alleles 2
--min-alleles 2
--minDP 40
--minQ 20
--remove-indels

After filtering, kept 44 out of 44 Individuals
After filtering, kept 7210100 out of a possible 11896369 Sites


```
NOW WE CAN SEE THAT NOT ONLY DID THE MAX-MISSING CRITERIA HAVE AN EFFECT, BUT ALSO THE MIN-MEANDP 50

HOWEVER, THIS IS BETTER THAN LAST TIME --> WITH ONLY HALF OF THE DATA, THE ORIGINAL DATA DID NOT EVEN PASS A minDP 40 FILTER LAST TIME.

GOING TO NOW TRY MINDP50 ONLY AND COMBINATIONS OF MINDP40 WITH LOWER MAX-MISSING AND/OR LOWER MINDP VALUES
```

# ATTEMPT 7 (removing minDP AND max-missing criteria, leaving min-meanDP 50):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 50

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!


# ATTEMPT 8 (Changing min-meanDP to 40 AND removing max-missing):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 40
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!


# ATTEMPT 9 (Changing min-meanDP to 40 AND removing max-missing):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 30

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 10 (removing min-meanDP AND max-missing criteria, leaving minDP 50)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50

After filtering, kept 44 out of 44 Individuals
After filtering, kept 7210243 out of a possible 11896369 Sites (minDP of 40 had 7210100 SNPs, so 143 more SNPs if you include a higher depth of 50, apparently...)

# ATTEMPT 11 (removing min-meanDP AND max-missing criteria, leaving minDP 100 ---> more out of curiousity)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 100

After filtering, kept 44 out of 44 Individuals
After filtering, kept 7210278 out of a possible 11896369 Sites

---> Not sure how there are 35 MORE SNPs when you have a minDP of 100 than when you have a minDP of 50...

```
-Going to keep minDP50 since sequencing was supposed to be to 50x coverage
-Need to decide if going to use a min-meanDP filter
```

# ATTEMPT 12 (removing max-missing criteria, leaving minDP 50 and min-meanDP 20)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --min-meanDP 20

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 13 (removing max-missing criteria, leaving minDP 50 and min-meanDP 10)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --min-meanDP 10

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 14 (removing max-missing criteria, leaving minDP 50 and min-meanDP 5)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --min-meanDP 5

After filtering, kept 44 out of 44 Individuals
After filtering, kept 693958 out of a possible 11896369 Sites

```
-Going to keep minDP50 since sequencing was supposed to be to 50x coverage
-Appears we can't use the min-meanDP filter. min-meanDP is the cutoff for a particular site to have a mean depth across all samples, so if any of the samples (any of the 44 'individual' populations) are too low in depth for a particular SNP (for example, the low pH samples having high mortality at certain sites), then the SNP will be thrown out of the analysis. minDP, however, is the minimum amount of coverage that a genotype needs to have for a SNP to have its information included in the analysis (I believe this effects the max-missing and that the sample would get marked as missing data for any SNPs for which it does not meet this criteria).

Now going to try minDP 50 with a max-missing of 0.9
```

# ATTEMPT 15 (removing min-meanDP, leaving minDP 50 and max-missing 0.9)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --max-missing 0.9

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 11896369 Sites


# ATTEMPT 16 (removing min-meanDP, leaving minDP 50 and max-missing 0.8)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --max-missing 0.8

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 17 (removing min-meanDP, leaving minDP 50 and max-missing 0.5)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --max-missing 0.5

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 18 (removing min-meanDP, leaving minDP 50 and max-missing 0.3)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --max-missing 0.3

After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!

# ATTEMPT 19 (removing min-meanDP, leaving minDP 50 and max-missing 0.1)
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 50 --max-missing 0.1

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 11896369 Sites
No data left for analysis!
```
Data is not passing a max-missing filter...

7210243 SNPs leftover after just the depth filtering. Not sure what to do about the max-missing filter

LOOKS LIKE THERE MAY BE AN ISSUE WITH MAPPING, TALKED WITH REID (2/13/19), GOING TO CHECK ON THIS - SEE MAPPINGNOTES.MD

```

--------------------------------------------------------------------------------------------------------
# ATTEMPT 1 (same parameters as Reid's original):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50 --max-missing 1

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!
Run Time = 379.00 seconds

# ATTEMPT 2 (removing max-missing criteria, SCREEN ID: 25869.pts-6.pespenilab):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!


# ATTEMPT 3 (removing minDP AND max-missing criteria, leaving min-meanDP 40):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 40

After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!

# ATTEMPT 4 (removing minDP AND max-missing criteria, leaving min-meanDP 20):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 20

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!

# ATTEMPT 5 (removing minDP AND max-missing criteria, leaving min-meanDP 10):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 10


# ATTEMPT 6 (removing minDP AND max-missing criteria, leaving min-meanDP 10, AND removing maf):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 10


After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!


• SOMETHING IS STILL CLEARLY WRONG WITH DEPTH - GOING TO FINISH LOOKING AT MAPPING DEPTH OF THE REST OF THE SAMPLES AND SEE IF I FIND SOMETHING...


• MAPPING DEPTH LOOKS GOOD (SEEMS LIKE THERE ARE DUPLICATES THOUGH, SINCE NUMBER OF MAPPED READS IS HIGHER THAN THE READS THAT WENT INTO MAPPING).

• HOWEVER, SEEMS LIKE HIGH QUALITY READS ARE ONLY ~HALF OF THE MAPPED READS. GOING TO TRY FILTERING THE VCF WITH NO MINQ

# ATTEMPT 7 (removing max-missing AND minQ criteria):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!


# ATTEMPT 8 (removing max-missing AND minQ criteria, min-meanDP 25):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 25

After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!



--------------------------------------------------------------------------------------------------------
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 50


# ONLY --min-alleles and --max alleles filters
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --min-alleles 2 --max-alleles 2

After filtering, kept 44 out of 44 Individuals
After filtering, kept 36068213 out of a possible 37600444 Sites

# --REMOVE-INDELS TO THE MIN AND MAX ALLELES FROM above
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --min-alleles 2 --max-alleles 2 --remove-indels

After filtering, kept 44 out of 44 Individuals
After filtering, kept 32072996 out of a possible 37600444 Sites


# ADD maf 0.01 to above --REMOVE-INDELS TO THE MIN AND MAX ALLELES FROM above
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --min-alleles 2 --max-alleles 2 --remove-indels

After filtering, kept 44 out of 44 Individuals
After filtering, kept 28218192 out of a possible 37600444 Sites

# ADD --min-meanDP 50 to maf 0.01 REMOVE-INDELS TO THE MIN AND MAX ALLELES FROM above
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 50

After filtering, kept 44 out of 44 Individuals
After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!

# Change--min-meanDP 10 FROM above
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --min-alleles 2 --max-alleles 2 --remove-indels --min-meanDP 10

After filtering, kept 0 out of a possible 37600444 Sites
No data left for analysis!

# Add minQ 20 TO 2 steps above
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/SpOA_combined_samtools_v1.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels

After filtering, kept 19399014 out of a possible 37600444 Sites
Run Time = 357.00 seconds

```
SO DEPTH IS THE ISSUE STILL...
```
