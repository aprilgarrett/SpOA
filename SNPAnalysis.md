######################################### snp_analysis.R #########################################



## pca, etc for full data set, f1, f2, f3.

library(stringr) # yes
library(ggplot2)
library(reshape)
library(data.table)
library(gridExtra)
library(scales)

af <- read.table("~/RESEARCH/SpOA/combined_data/analysis/filtered_allele_freqs.txt", header=TRUE)
dat3 <- read.table("~/RESEARCH/SpOA/combined_data/analysis/filtered_variants.txt", header=TRUE)

pops <- c(
        "D1_7_0_S_02", "D1_7_0_S_03", "D1_7_0_S_04", "D1_7_0_S_05",
        "D1_7_0_S_08", "D1_7_5_S_01", "D1_7_5_S_03", "D1_7_5_S_04",
        "D1_7_5_S_05", "D1_7_5_S_08", "D1_8_1_S_01", "D1_8_1_S_03",
        "D1_8_1_S_05", "D1_8_1_S_08", "D7_7_0_S_25", "D7_7_0_S_26",
        "D7_7_0_S_27", "D7_7_0_S_28", "D7_7_0_S_29", "D7_7_0_S_30",
        "D7_7_0_V_02", "D7_7_0_V_03", "D7_7_0_V_04", "D7_7_0_V_05",
        "D7_7_0_V_06", "D7_7_5_S_31", "D7_7_5_S_32", "D7_7_5_S_33",
        "D7_7_5_S_36", "D7_7_5_V_07", "D7_7_5_V_08", "D7_7_5_V_09",
        "D7_7_5_V_10", "D7_7_5_V_12", "D7_8_1_S_13", "D7_8_1_S_14",
        "D7_8_1_S_15", "D7_8_1_S_18", "D7_8_1_V_19", "D7_8_1_V_20",
        "D7_8_1_V_21", "D7_8_1_V_22", "D7_8_1_V_23", "D7_8_1_V_24")


freqs <- t(af[,2:ncol(af)])
colnames(freqs) <- c(paste(dat3$Chrom, dat3$Position, sep=":"))

# apply PCA - scale. = TRUE is highly
# advisable, but default is FALSE.

pcaResult <- prcomp(freqs, scale=TRUE)
#round(pcaResult$sdev^2/sum(pcaResult$sdev^2)*100, digits=2)
#summary(pcaResult)

####
##
## plot pca
##
####

# get proportion of total variance explained:
percentVar <- round(pcaResult$sdev^2/sum(pcaResult$sdev^2)*100, digits=2)

dat.p <- data.frame(id=pops, Line=substr(pops, 1,4),
        gen=substr(pops, 6,7),
        PC1 = pcaResult$x[,1],  PC2= pcaResult$x[,2])

a <- ggplot(dat.p, aes(PC1, PC2, fill=Line, shape=gen)) +
        geom_point(size=4, color="black") +
        xlab(paste0("PC1: ",percentVar[1],"% variance")) +
        ylab(paste0("PC2: ",percentVar[2],"% variance")) +
        theme_bw() +
       # ylim(-30, 23) + xlim(-50, 65)+
        scale_shape_manual(values=c( 21,22,24))+
        #scale_color_manual(values=c('brown3','blue3', 'darkgoldenrod3', "darkorchid3"))+
        scale_fill_manual(values=c('brown3','blue3', 'darkgoldenrod3', "darkorchid3"))+
        #theme(legend.position = c(0.88,0.17))+
       # theme(legend.text=element_text(size=8),legend.title=element_blank())+
        #theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid'))+
       guides(fill=guide_legend(override.aes=list(shape=c(21,21,21, 21),
                size=c(5,5,5,5), fill=c('brown3','blue3', 'darkgoldenrod3', "darkorchid3"))))+
       ggtitle("All generations")
        #        shape=FALSE,
        #        size=FALSE)+
        #scale_size_manual(values=c(7,5))
a


png("~/reciprocal_t/figures/pca_all.png", res=300, height=4, width=5, units="in")

a

dev.off()
