% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binarize.R
\name{binarize}
\alias{binarize}
\title{Turn data with numeric, categorical features into binary data.}
\usage{
binarize(data, n_bins = 4, thresh_infreq = 0.01,
  name_infreq = "-OTHER", one_hot = TRUE)
}
\arguments{
\item{data}{A \code{tibble} or \code{data.frame}}

\item{n_bins}{The number of bins to for converting continuous (numeric features) into discrete features (bins)}

\item{thresh_infreq}{The threshold for converting categorical (character or factor features) into an "Other" Category.}

\item{name_infreq}{The name for infrequently appearing categories to be lumped into. Set to "-OTHER" by default.}

\item{one_hot}{If set to \code{TRUE}, binarization returns number of new columns = number of levels.
If \code{FALSE}, binarization returns number of new columns = number of levels - 1 (dummy encoding).}
}
\value{
A \code{tbl}
}
\description{
\code{binarize} returns the binary data coverted from data in normal (numeric and categorical) format.
}
\details{
The Goal

The binned format helps correlation analysis to identify non-linear trends between a predictor (binned values) and a
response (the target)What Binarize Does

The \code{binarize()} function takes data in a "normal" format and converts to a binary format that is useful as a preparation
step before using \code{\link[=correlate]{correlate()}}:

\strong{Numeric Features}:
The "Normal Data" format has numeric features that are continuous values in numeric format (\code{double} or \code{integer}).
The \code{binarize()} function converts these to bins (categories) and then discretizes the bins using a one-hot encoding process.

\strong{Categorical Features}:
The "Normal Data" format has categorical features that are \code{character} or \code{factor} format.
The \code{binarize()} function converts these to binary features using a one-hot encoding process.
}
\examples{
library(dplyr)
library(correlationfunnel)

marketing_campaign_tbl \%>\%
    select(-ID) \%>\%
    binarize()


}
