\name{rcpp_calc_anclikes_sp_using_COOprobs}
\alias{rcpp_calc_anclikes_sp_using_COOprobs}
\title{Calculate ancestral likelihoods given a COO-like probability matrix}
\usage{
  rcpp_calc_anclikes_sp_using_COOprobs(Rcpp_leftprobs,
    Rcpp_rightprobs, RCOO_left_i_list, RCOO_right_j_list,
    RCOO_probs_list, Rsp_rowsums, printmat = TRUE)
}
\arguments{
  \item{Rcpp_leftprobs}{Probabilities of the states at the
  base of the left descendant branch}

  \item{Rcpp_rightprobs}{Probabilities of the states at the
  base of the right descendant branch}

  \item{RCOO_left_i_list}{0-based index of the allowed left
  states\cr}

  \item{RCOO_right_j_list}{0-based index of the allowed
  right states\cr}

  \item{RCOO_probs_list}{Value of the specified nonzero
  cells\cr}

  \item{Rsp_rowsums}{A vector of size (numstates) giving
  the sum of the relative probabilites of each combination
  of descendant states, assuming the probabilities of the
  left- and right-states are all equal (set to 1). This is
  thus the sum of the weights, and dividing by this
  normalization vector means that the each row of the
  speciation probability matrix will sum to 1.  Default
  assumes the weights sum to 1 but this is not usually the
  case. Rsp_rowsums need only be calculated once per
  tree+model combination, stored, and then re-used for each
  node in the tree, yielding significant time savings.}

  \item{printmat}{Should the probability matrix output be
  printed to screen? (useful for debugging, but can be
  dramatically slow in R.app for some reason for even
  moderate numbers of states; perhaps overrunning the line
  length...)}
}
\value{
  \code{R_anc_relprobs} Vector of the probabilities of the
  ancestral states
}
\description{
  This function does a pass through a COO-like transition
  probability matrix for a node, inputting the
  probabilities that have been passed down from above for
  the left and right branch, and the sum of weights for
  each ancestral state, and returns the ancestral relative
  probabilities.
}
\details{
  This C++ implementation should be slightly faster than
  the R version, although for a simple pass through an
  array the difference may not be great.
}
\examples{
# For the basic logic of a probablistic cladogenesis model, see
?rcpp_calc_anclikes_sp

# For examples of running the functions, see the comparison of all functions at:
# ?cladoRcpp
}
\author{
  Nicholas Matzke \email{matzke@berkeley.edu}
}
\references{
  Matzke N (2012). "Founder-event speciation in BioGeoBEARS
  package dramatically improves likelihoods and alters
  parameter inference in Dispersal-Extinction-Cladogenesis
  (DEC) analyses." _Frontiers of Biogeography_, *4*(suppl.
  1), pp. 210. ISSN 1948-6596, Poster abstract published in
  the Conference Program and Abstracts of the International
  Biogeography Society 6th Biannual Meeting, Miami,
  Florida. Poster Session P10: Historical and
  Paleo-Biogeography. Poster 129B. January 11, 2013, <URL:
  \url{http://phylo.wikidot.com/matzke-2013-international-biogeography-society-poster}>.
}
\seealso{
  \code{\link{rcpp_calc_anclikes_sp}}

  \code{\link{rcpp_calc_anclikes_sp}}
}

