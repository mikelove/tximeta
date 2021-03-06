% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addRanges.R
\name{addCDS}
\alias{addCDS}
\title{Add CDS to rowRanges of a transcript-level SummarizedExperiment}
\usage{
addCDS(se)
}
\arguments{
\item{se}{the SummarizedExperiment}
}
\value{
a SummarizedExperiment
}
\description{
Working similarly to \code{\link{addExons}}, this function
can be used to add information about CDS (coding sequence)
to the \code{SummarizedExperiment} object. As not all transcripts
are coding, we have CDS information for only a subset of the
rows of the object. For this reason, a logical indicator for
whether the transcript is coding, \code{mcols(se)$coding},
is added as a column to the metadata columns of the \code{rowRanges}
of the object. An additional column, \code{mcols(se)$cds},
is added to the metadata columns, which is a \code{GRangesList}
with either the CDS regions (if the transcript is coding),
or the original transcript/exon ranges (if the transcript is non-coding).
This is necessary, as \code{GRangesList} cannot have NA elements.
As with \code{\link{addExons}}, this function is designed only
for transcript-level objects.
}
