\name{rcpp_areas_list_to_states_list}
\alias{rcpp_areas_list_to_states_list}
\title{Make a list of 0-based indices of possible combinations of input areas}
\usage{
  rcpp_areas_list_to_states_list(areas = c("A", "B", "C"),
    maxareas = length(areas), include_null_range = TRUE)
}
\arguments{
  \item{areas}{a list of areas (character or number; the
  function converts these to numbers, starting with 0)}

  \item{maxareas}{maximum number of areas in this analyses}

  \item{include_null_range}{\code{TRUE} or \code{FALSE},
  should the \code{NULL} range be included in the possible
  states? (e.g., \code{LAGRANGE} default is yes)}
}
\value{
  \code{R_states_list} A list of the states, where each
  state is a list of areas in the form of 0-based indices
}
\description{
  Given a list of areas (actually a list of anything; all
  that is important is the length of the list)
  \code{rcpp_areas_list_to_states_list} calculates all
  possible combinations of these areas, listing them by the
  0-based indices that specify the position of each area in
  the list.
}
\details{
  Using 0-based indexing is convenient in the C++ code
  called by the other functions, rather than having to keep
  track of the various people might label their areas
  (names, abbreviations, letters, numbers).

  As in LAGRANGE (Ree & Smith 2008), the maximum range size
  (i.e. the maximum number of areas in a range) can be
  specified by the user.  Having a smaller maximum range
  size drastically reduces the number of states, and thus
  the size of the transition matrix and the cladogenesis
  matrix.
}
\examples{
# Specify the areas
areas_list = c("A", "B", "C")
areas_list

# Let's try Rcpp_combn_zerostart, in case that is the source of a
# problem found via AddressSanitizer
Rcpp_combn_zerostart(n_to_choose_from=4, k_to_choose=2, maxlim=1e+07)
Rcpp_combn_zerostart(n_to_choose_from=4, k_to_choose=3, maxlim=1e+07)


\dontrun{

# Calculate the list of 0-based indices for each possible geographic range, i.e.
# each combination of areas
states_list = rcpp_areas_list_to_states_list(areas=areas_list, maxareas=3,
include_null_range=FALSE)
states_list
states_list = rcpp_areas_list_to_states_list(areas=areas_list, maxareas=3,
include_null_range=TRUE)
states_list
states_list = rcpp_areas_list_to_states_list(areas=areas_list, maxareas=2,
include_null_range=TRUE)
states_list
states_list = rcpp_areas_list_to_states_list(areas=areas_list, maxareas=1,
include_null_range=TRUE)
states_list

}
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

  Ree RH and Smith SA (2008). "Maximum likelihood inference
  of geographic range evolution by dispersal, local
  extinction, and cladogenesis." _Systematic Biology_,
  *57*(1), pp. 4-14. <URL:
  http://dx.doi.org/10.1080/10635150701883881>, <URL:
  http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&dopt=Citation&list_uids=18253896>.
}
\seealso{
  \code{\link{numstates_from_numareas}},
  \code{\link{areas_list_to_states_list_old}}
}

