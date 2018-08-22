#Description: A function that runs logistic regression on one line of rna/rpf dataset.
#Useful for testing. Returns estimate, std error, and p value.
wdm <- function(x, rowName, condition) {
  Weight <- c(x[rowName,])
  Type <- c(rep(c("RNA", "RPF"), length.out = ncol(x)))
  z <- cbind(Type, Weight)
  w <- cbind(condition, z)
  Sample <- colnames(x)
  Sample <- cbind(Sample, w)
  row.names(Sample) <- NULL
  return(logit.rpf.i(Sample, condition))
}
