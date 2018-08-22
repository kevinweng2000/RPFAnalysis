#Description: Logistic regression function with modular formula and returns beta coefficients.
logit.rpf.i <- function(inMat, condi) {
  outcome <- rep(c("RNA", "RPF"), length(unique(condi)))
  conditions <- c(colnames(condi))
  #Dynamic regression formula
  genForm <- function(x) {
    formul <-
      as.formula(paste(paste("outcome", "~", sep = " "), conditions, collapse =
                         " + "))
  }
  #Regression function.
  logit.rpf.gene <- function(m) {
    prep <- data.frame(condi, outcome, m)
    fit <-
      glm(
        formula = formul,
        data = prep,
        family = "binomial"
        (link = "logit"),
        weights = unlist(m)
      )
    fits <<- summary(fit)
    #Function to extract beta values, std error, and p values.
    ext <- function(rowNum) {
      #Try catch to test for fewer than expected beta values which means too many 0's as read counts. Fills in as NA to fix formatting.
      tryExt <- tryCatch({
        fits$coefficients[length(unlist(unique(condi))), ]
        return(c(fits$coefficients[rowNum , c(1, 2, 4)]))
      },
      error = function(x) {
        return(c(rep(NA, times = 3 * length(
          unlist(unique(condi))
        ))))
      })
      return(tryExt)
    }
    return(strres <- c(apply(array(c(
      1:nrow(fits$coefficients)
    )), 1, ext)))
  }
  logit.inMat <-
    logit.rpf.gene(unlist(inMat[, ncol(inMat)]))
  return(logit.inMat)
}
