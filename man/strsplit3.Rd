\name{strsplit3}
\alias{strsplit3}
\title{String splitting shortcut}
\usage{
  strsplit3(x, ...)
}
\arguments{
  \item{x}{A string to split}

  \item{...}{Other arguments to
  \code{\link[base]{strsplit}}.  The argument \code{split}
  is \emph{required}.}
}
\value{
  \code{out} The output from inside the list.
}
\description{
  \code{\link[base]{strsplit}} returns the results inside a
  list, which is annoying. \code{strsplit3} shortens the
  process.
}
\examples{
# strsplit returns the results inside a list element
out = strsplit("ABC", split="")
out
# I.e....
out[[1]]

# If this is annoying/ugly in the code, use strsplit3:
out = strsplit3("ABC", split="")
out
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\seealso{
  \code{\link[base]{strsplit}}
}

