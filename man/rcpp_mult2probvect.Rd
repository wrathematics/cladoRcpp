\name{rcpp_mult2probvect}
\alias{rcpp_mult2probvect}
\title{Get the product of multiplying each pair of values in a vector (cross-product)}
\usage{
  rcpp_mult2probvect(a, b)
}
\arguments{
  \item{a}{a numeric vector}

  \item{b}{a numeric vector}
}
\value{
  \code{tcross_product_vector} the vector which is the
  product of the convolution
}
\description{
  This function calls a C++ function which multiplies two
  vectors by each other elementwise, such that the output
  is of length(a) * length(b).
}
\details{
  This is the cross-product operation, which exists in R
  (\code{\link[base]{\%o\%}} or
  \code{\link[base]{tcrossprod}}). However, it is handy to
  have is as a C++ function for calculating the probability
  of pairs of descendant states, given the probability of
  each state individually.
}
\examples{
ca = c(1,2,3,4,5)
cb = c(2,2,2,2,2)
rcpp_mult2probvect(a=ca, b=cb)

# Same as:
c(ca \%o\% cb)

# Or:
c(outer(ca, cb))

# Or:
tcrossprod(ca, cb)
}
\author{
  Nicholas Matzke \email{matzke@berkeley.edu}
}
\seealso{
  \code{\link[base]{\%o\%}},
  \code{\link[base]{tcrossprod}},
  \code{\link{Rcpp_combn_zerostart}},
  \code{\link{rcpp_convolve}}
}

