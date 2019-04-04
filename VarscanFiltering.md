############################################# FILTERING SNPS & GETTING ALLELE FREQS #############################################


/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/varscan_spoa_v2.vcf --min-alleles 2 --max-alleles 2

2,655,395


# ATTEMPT 1 (same parameters as Reid's original):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/varscan_spoa_v2.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50 --max-missing 1

• SNPs before filtering:
2,829,387

• SNPs after filtering: 0


# ATTEMPT 2 (same parameters as Reid's original except no max-missing):
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/varscan_spoa_v2.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50

• SNPs after filtering: 0



## 01.3_varscan_v2_filter.sh
```
#!/bin/bash

cd ~/RESEARCH/SpOA/combined_data/variants

# filter mean min depth and min avg depth. Plus biallelic.
/data/programs/vcftools --vcf ~/RESEARCH/SpOA/combined_data/variants/varscan_spoa_v2.vcf --maf 0.01 --minQ 20 --min-alleles 2 --max-alleles 2 --remove-indels --minDP 40 --min-meanDP 50 --max-missing 0.8 --recode -c | /users/r/b/rbrennan/bin/vcftools/bin/vcf-sort -c | bgzip > ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2.vcf.gz

tabix -p vcf ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2.vcf.gz

# pull out allele freq data
zcat ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2.vcf.gz | grep -v '^##' | cut -f 1-8 | sed 's/#CHROM/CHROM/g' > ~/RESEARCH/SpOA/combined_data/analysis/spoa_af.info.txt

zcat ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2.vcf.gz | grep -v '^##' | cut -f 10- > ~/RESEARCH/SpOA/combined_data/analysis/spoa_af.out.txt
```
---------------------------------------------------------------------------------------------

############################################ DETERMINING MEAN DEPTH FOR FINAL FILTERING ############################################


# filter by depth:    01.3_filter_varscanv2.R  SCREEN ID:
```
# read in data
snp.info <- read.table("~/RESEARCH/SpOA/combined_data/analysis/spoa_af.info.txt", header=TRUE)
snp <- read.table("~/RESEARCH/SpOA/combined_data/analysis/spoa_af.out.txt", header=TRUE)
# make names a bit less annoying
#colnames(snp) <- gsub("OASV2_DNA_", "", colnames(snp))
#colnames(snp) <- gsub("S_", "", colnames(snp))
#colnames(snp) <- gsub("V_", "", colnames(snp))
#colnames(snp) <- gsub("5_", "", colnames(snp))
#colnames(snp) <- gsub("0_", "", colnames(snp))
#split af
out.split <- apply(snp, 2, function(x) strsplit(x, ":"))
#make new data frame to save output
dat <- data.frame(row.names=seq(from=1, to=nrow(snp),by= 1))
# get depths and fill dat data frame
for(i in 1:length(names(out.split))){
ct <- matrix(unlist(out.split[[i]]), ncol=4, byrow=TRUE)
#
dat[,paste(names(out.split)[i], "DPtotal", sep="_")] <- sapply(strsplit(ct[,3], ","), "[", 1)
dat[,paste(names(out.split)[i], "DP1", sep="_")] <- sapply(strsplit(ct[,4], ","), "[", 1)
dat[,paste(names(out.split)[i], "DP2", sep="_")] <- sapply(strsplit(ct[,4], ","), "[", 2)
}
dep <-  dat[,grep("_DPtotal", colnames(dat))]
#convert all to numeric
dep <- data.frame(sapply(dep, function(x) as.numeric(as.character(x))))
avgdepth <- apply(dep,1,mean)
mean(avgdepth)
# 124.8821  --> setting --max-meanDP 125
max(avgdepth)
# 734.9545
```

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

######################################### DETERMINING MEAN DEPTH FOR FINAL DEPTH FILTERING #########################################

01.4_varscanv2vcf_FilterMaxDepth.sh

```
#!/bin/bash

# filter by max depth calculated in 01.3_filter.R
cd ~/RESEARCH/SpOA/combined_data/variants

zcat ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2.vcf.gz | \
    /data/programs/vcftools --vcf - \
    --max-meanDP XXX \
    --recode -c | \
    bgzip > ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2_nearfinal.vcf.gz

tabix -p vcf ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_varscan_v2_nearfinal.vcf.gz
```

####### NOTE: May not need to do steps below (used bed file in vcf calling already), need to determine

• 45,174 SNPs leftover

------------------------------------------------------------------------------- SKIPPING PROBE DISTANCE STEPS FOR NOW (3/20/19)
######################################### DETERMINING PROBE DISTANCE FOR FINAL FILTERING #########################################


#!/bin/bash

# sort the probe bed file
# this file contains all probes used to capture dna and make libraries
#### sort -k1,1 -k2,2n /data/OASV2/RG_7601_Probe.extended.bed > ~/reference/urchin_probes.sorted.bed ### ALREADY DONE BY REID FOR URCHIN MS, SO WILL USE THIS FILE SINCE IT'S THE SAME ONE I NEED

#bedfile from vcf
zcat ~/RESEARCH/SpOA/combined_data/variants/spoa_combined_bcftools_1_9_filt2.vcf.gz | grep -v '^#' | cut -f 1-2 | \
awk '{OFS="\t";{print $1,$2-1,$2}}' | \
tail -n +2 | sort -k1,1 -k2,2n > ~/RESEARCH/SpOA/combined_data/spoa.variant.probedist.bed

# calc distance
/users/r/b/rbrennan/bin/bedtools2/bin/bedtools closest -a ~/RESEARCH/SpOA/combined_data/spoa.variant.probedist.bed \
-b /users/r/b/rbrennan/reference/urchin_probes.sorted.bed \
-d -t first  > ~/RESEARCH/SpOA/combined_data/analysis/snp_probe_dist.txt



------------------------------------------------------------------ ### IN R ###

mydat <- read.table("~/urchin_af/analysis/snp_probe_dist.txt", header=FALSE)
###
### remove loci > 2kb from any target
###
low.keep <- which(mydat$V14 <= 2000)
out <- mydat[low.keep,]
# write file to filter vcf
write.table(file="~/urchin_af/variants/keep.ontarget.txt",
    as.data.frame(cbind(as.character(out$V1), out$V3)), row.names=FALSE, col.names=FALSE, quote=FALSE, sep="\t")



---------------------------------------------------------------------------------------------
######################################### FINAL FILTERING #########################################

#!/bin/bash
#removing all variants that are > XXXkb from a probe.
cd ~/urchin_af/variants/
zcat ~/urchin_af/variants/urchin_filt2.vcf.gz | \
~/bin/vcftools/bin/vcftools --vcf - \
    --positions ~/urchin_af/variants/keep.ontarget.txt \
    --recode -c | \
    bgzip > ~/urchin_af/variants/urchin_final.vcf.gz
tabix -p vcf ~/urchin_af/variants/urchin_final.vcf.gz
