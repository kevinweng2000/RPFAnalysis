#Description: Normalization function for unnormalized datasets.
mnorm <- function(x) {
  xclo <- x[1,]
  rootnum <- 1 / (ncol(x) / 2)
  odd.ind <- seq(1, ncol(x), 2)
  even.ind <- seq(2, ncol(x), 2)
  nnum <- (ncol(x) / 2)
  data <- x[, odd.ind]
  data2 <- x[, even.ind]

  #Geometric mean calculation.
  rna.geo <- apply(data, 1, prod) ** rootnum
  rpf.geo <- apply(data2, 1, prod) ** rootnum

  #Divides each library by its respective geometric mean.
  x1 <- data.frame(x[, odd.ind] / rna.geo)
  x1$rna.geo <- rna.geo
  x2 <- data.frame(x[, even.ind] / rpf.geo)
  x2$rpf.geo <- rpf.geo

  #Takes out the Infinites.
  x1 <-
    do.call(data.frame, lapply(x1, function(x)
      replace(x, is.infinite(x), NA)))
  x2 <-
    do.call(data.frame, lapply(x2, function(x)
      replace(x, is.infinite(x), NA)))

  #Finds the median of each column in the librares without NA or Inf as size factor.
  med.rna <- apply(x1, 2, median, na.rm = TRUE, Inf.rm = TRUE)
  med.rpf <- apply(x2, 2, median, na.rm = TRUE, Inf.rm = TRUE)

  ret <- c(med.rna, med.rpf)
  ret <- ret[!names(ret) %in% c("rna.geo", "rpf.geo")]
  #ret <- t(apply(data.frame(ret), 2, signif, digits = 4))

  #Putting the size factors into a list
  xclo[odd.ind] <- ret[1:(length(ret)/2)]
  xclo[even.ind] <- ret[((length(ret)/2)+1):length(ret)]

  #Divides the columns of the original dataset by their respective size factors.
  counter <- 0
  div <- function(n) {
    counter <<- counter + 1
    return(n / as.numeric(xclo[counter]))
  }
  xres <- apply(x, 2, div)
  return(xres)
}
