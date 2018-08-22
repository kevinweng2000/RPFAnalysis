cn.rna.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/CN34_S1_r1_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(cn.rna.1) <- c("Gene", "cn.rna.1.cnt")
summary(cn.rna.1)
#Gene        cn.rna.1.cnt
#__alignment_not_unique:    1   Min.   :      0
#__ambiguous           :    1   1st Qu.:      0
#__no_feature          :    1   Median :     11
#__not_aligned         :    1   Mean   :    783
#__too_low_aQual       :    1   3rd Qu.:    376
#A1BG                  :    1   Max.   :5709612
#(Other)               :26363
cn.rpf.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/CN34_S5_r1_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(cn.rpf.1) <- c("Gene", "cn.rpf.1.cnt")
summary(cn.rpf.1)
#Gene        cn.rpf.1.cnt
#__alignment_not_unique:    1   Min.   :      0.0
#__ambiguous           :    1   1st Qu.:     12.0
#__no_feature          :    1   Median :     47.0
#__not_aligned         :    1   Mean   :    421.5
#__too_low_aQual       :    1   3rd Qu.:    138.0
#A1BG                  :    1   Max.   :2007113.0
#(Other)               :12310
cn.rna.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/CN34_S2_r2_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(cn.rna.2) <- c("Gene", "cn.rna.2.cnt")
summary(cn.rna.2)
#Gene        cn.rna.2.cnt
#__alignment_not_unique:    1   Min.   :      0
#__ambiguous           :    1   1st Qu.:      0
#__no_feature          :    1   Median :     10
#__not_aligned         :    1   Mean   :    737
#__too_low_aQual       :    1   3rd Qu.:    364
#A1BG                  :    1   Max.   :4961820
#(Other)               :26363
cn.rpf.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/CN34_S6_r2_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(cn.rpf.2) <- c("Gene", "cn.rpf.2.cnt")
summary(cn.rpf.2)
#Gene        cn.rpf.2.cnt
#__alignment_not_unique:    1   Min.   :      0.0
#__ambiguous           :    1   1st Qu.:     11.0
#__no_feature          :    1   Median :     41.0
#__not_aligned         :    1   Mean   :    399.6
#__too_low_aQual       :    1   3rd Qu.:    121.0
#A1BG                  :    1   Max.   :1786645.0
#(Other)               :12215
lm.rna.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM1a_S3_r1_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm.rna.1) <- c("Gene", "lm.rna.1.cnt")
summary(lm.rna.1)
#Gene        lm.rna.1.cnt
#__alignment_not_unique:    1   Min.   :       0
#__ambiguous           :    1   1st Qu.:       0
#__no_feature          :    1   Median :      13
#__not_aligned         :    1   Mean   :    1226
#__too_low_aQual       :    1   3rd Qu.:     449
#A1BG                  :    1   Max.   :12116551
#(Other)               :26363
lm.rpf.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM1a_S7_r1_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm.rpf.1) <- c("Gene", "lm.rpf.1.cnt")
summary(lm.rpf.1)
#Gene        lm.rpf.1.cnt
#__alignment_not_unique:    1   Min.   :     0.0
#__ambiguous           :    1   1st Qu.:     8.0
#__no_feature          :    1   Median :    25.0
#__not_aligned         :    1   Mean   :   206.5
#__too_low_aQual       :    1   3rd Qu.:    70.0
#A1BG                  :    1   Max.   :894053.0
#(Other)               :11595
lm.rna.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM1a_S4_r2_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm.rna.2) <- c("Gene", "lm.rna.2.cnt")
summary(lm.rna.2)
#Gene        lm.rna.2.cnt
#__alignment_not_unique:    1   Min.   :       0
#__ambiguous           :    1   1st Qu.:       0
#__no_feature          :    1   Median :      20
#__not_aligned         :    1   Mean   :    1742
#__too_low_aQual       :    1   3rd Qu.:     658
#A1BG                  :    1   Max.   :16261826
#(Other)               :26363
lm.rpf.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM1a_S8_r2_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm.rpf.2) <- c("Gene", "lm.rpf.2.cnt")
summary(lm.rpf.2)
#Gene        lm.rpf.2.cnt
#__alignment_not_unique:    1   Min.   :     0.0
#__ambiguous           :    1   1st Qu.:     7.0
#__no_feature          :    1   Median :    22.0
#__not_aligned         :    1   Mean   :   186.9
#__too_low_aQual       :    1   3rd Qu.:    63.0
#A1BG                  :    1   Max.   :819806.0
#(Other)               :11434

lm2.rna.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM2_S3_r1_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm2.rna.1) <- c("Gene", "lm2.rna.1.cnt")
lm2.rna.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM2_S4_r2_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm2.rna.2) <- c("Gene", "lm2.rna.2.cnt")
lm2.rpf.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM2_S7_r1_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm2.rpf.1) <- c("Gene", "lm2.rpf.1.cnt")
lm2.rpf.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/LM2_S8_r2_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(lm2.rpf.2) <- c("Gene", "lm2.rpf.2.cnt")
mda.rna.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/MDA_S1_r1_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(mda.rna.1) <- c("Gene", "mda.rna.1.cnt")
mda.rna.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/MDA_S2_r2_rna.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(mda.rna.2) <- c("Gene", "mda.rna.2.cnt")
mda.rpf.1 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/MDA_S5_r1_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(mda.rpf.1) <- c("Gene", "mda.rpf.1.cnt")
mda.rpf.2 <-
  as.data.frame(
    read.table(
      "/Users/kevinweng/Desktop/R Projects/Fourlines/MDA_S6_r2_rpf.trim.uncontam.cnt",
      header = FALSE
    )
  )
colnames(mda.rpf.2) <- c("Gene", "mda.rpf.2.cnt")





#Creates a table lmcn
lmcn <-
  Reduce(
    function(x, y)
      merge(x, y, all = TRUE),
    list(
      cn.rna.1,
      cn.rpf.1,
      cn.rna.2,
      cn.rpf.2,
      lm.rna.1,
      lm.rpf.1,
      lm.rna.2,
      lm.rpf.2
    )
  )

newlines <-
  Reduce(
    function(x, y)
      merge(x, y, all = TRUE),
    list(
      lm2.rna.1,
      lm2.rpf.1,
      lm2.rna.2,
      lm2.rpf.2,
      mda.rna.1,
      mda.rpf.1,
      mda.rna.2,
      mda.rpf.2
    )
  )
lmcn4 <- data.frame(lmcn, newlines)
head(lmcn4)
lmcn4 <- data.frame(na.omit(lmcn4)[-c(1:5), ])
row.names(lmcn4) <- lmcn4$Gene

