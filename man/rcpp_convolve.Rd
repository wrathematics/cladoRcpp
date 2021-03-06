\name{rcpp_convolve}
\alias{rcpp_convolve}
\title{Run C++ version of convolve(x,y, conj=TRUE, type="open")}
\usage{
  rcpp_convolve(a, b)
}
\arguments{
  \item{a}{a numeric vector}

  \item{b}{a numeric vector}
}
\value{
  \code{convolve_result_vector} the vector which is the
  product of the convolution
}
\description{
  This function runs a C++ version of the R function
  \code{\link{convolve}}, specifically: \code{convolve(x,y,
  conj=TRUE, type="open")}
}
\details{
  The R function \code{\link{convolve}} is an example of an
  R function that gets very slow when the input vectors are
  large. This C++ version, \code{rcpp_convolve} can be
  dramatically faster for large vectors.

  \code{rcpp_convolve} produces the same output as:
  \code{convolve(ca, cb, conj=TRUE, type="open")}

  Note: The C++ code is from the Rcpp examples in:
  Eddelbuettel & Francois (2011). Rcpp: Seamless R and C++
  Integration. \emph{Journal of Statistical Software},
  40(8), 1-18.
}
\examples{
# Set up 2 vectors, then convolve them
ca = c(1,2,3,4,5)
cb = c(2,2,2,2,2)
rcpp_convolve(a=ca, b=cb)

# Same as:
convolve(ca, cb, conj=TRUE, type="open")
}
\author{
  C++ code by: Dirk Eddelbuettel <edd at debian.org> &
  Romain Francois (2011); This R wrapper & documentation:
  Nicholas Matzke \email{matzke@berkeley.edu}
}
\references{
  Eddelbuettel D and Francois R (2011). "Rcpp: Seamless R
  and C++ Integration." _Journal of Statistical Software_,
  *40*(8), pp. 1-18. ISSN 1548-7660, See also:
  http://cran.r-project.org/web/packages/Rcpp/vignettes/Rcpp-introduction.pdf
  , http://cran.r-project.org/web/packages/Rcpp/index.html
  , <URL: http://www.jstatsoft.org/v40/i08>.
}
\seealso{
  \code{\link[Rcpp]{Rcpp}}, \code{\link{convolve}},
  \code{\link{rcpp_mult2probvect}},
  \code{\link{Rcpp_combn_zerostart}}
}

