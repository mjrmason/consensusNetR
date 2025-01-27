% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/consensus_calc.R
\name{detect_consensus_communities}
\alias{detect_consensus_communities}
\title{Detect Communities in Adjacency/Reciprocal Best Hits Matrix}
\usage{
detect_consensus_communities(rbh, expansion = 2)
}
\arguments{
\item{rbh}{adjacency/reciprocal best hits matrix, as output by
\code{\link[=construct_rbh_correlation_based]{construct_rbh_correlation_based()}}}

\item{expansion}{numeric value > 1 for the expansion parameter}
}
\value{
The output of \code{\link[MCL:mcl]{MCL::mcl()}}, renamed so that the clusters
are in order of size (1 being the largest)
}
\description{
Performs Markov Clustering on the adjacency matrix, giving the
cluster/community number that each metagene is associated with, renamed so
that the clusters are in order of size (1 being the largest)
}
\details{
See \code{\link[MCL:mcl]{MCL::mcl()}} for more detail
}
\examples{
\dontrun{
# Create list of community_membership object
memb_list <- list(
  GSE39582 = GSE39582_icwgcna$community_membership,
  READ = read_icwgcna$community_membership,
  COAD = coad_icwgcna$community_membership
)
ma <- construct_rbh_correlation_based(
  memb_list,
  upper_quant = .99,
  lower_quant = .05,
  max_rank = 2
)
consensus_comms <- detect_consensus_communities(ma)
}
}
