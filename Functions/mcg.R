#Description: A function that streamlines the data transformation and analysis of an entire dataset. Dependent on wdm function.
mcg <- function(inMatr, condi, norm = TRUE) {
  #Analysis of each gene and formatting into one matrix
  dataFr <-
    matrix(unlist(apply(
      array(c(row.names(inMatr))), 1, wdm, x = inMatr, condition = condi
    )),
    nrow = nrow(inMatr),
    byrow = TRUE)
  #Renaming and formatting
  rownames(dataFr) <- c(rownames(inMatr))
  colnames(dataFr) <-
    c(rep(
      c("Estimate_ß", "Std. Error_ß", "Pr(>|z|)_ß"),
      times = (length(unique(condi)))
    ))
  colnames(dataFr) <-
    paste(colnames(dataFr), c(rep(c(0:((ncol(dataFr) / 3 - 1)
    )), each = 3)), sep = "")
  colnames(dataFr) <-
    paste(colnames(dataFr), c(rep(c(
      rownames(fits$coefficients)
    ), each = 3)), sep = "_")

  return(dataFr)
}
#Sometimes occurs as warning message
#glm.fit: fitted probabilities numerically 0 or 1 occurred

#system.time(mcg(lmcn3.d, conditionMat))
#user  system elapsed
#34.679   0.124  34.833
