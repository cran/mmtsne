% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmtsne_prep.R
\name{x2p}
\alias{x2p}
\title{Data to probability matrix}
\usage{
x2p(X, perplexity = 30, tol = 1e-05)
}
\arguments{
\item{X}{A data matrix with \eqn{N} rows.}

\item{perplexity}{The target perplexity. Values between 5 and 50 are
generally considered appropriate. Loosely translates into the
expected number of neighbors per point.}

\item{tol}{A small positive value.}
}
\value{
An \code{N x N} matrix of pair-wise probabilities.
}
\description{
\code{x2p} returns a pair-wise conditional probability matrix given an input
   matrix \emph{X}.
}
\details{
This function is an almost direct port of the original Python implementation
by van der Maaten and Hinton (2008). It uses a binary search to estimate
probability values for all pairwise-elements of \code{X}. The conditional
Gaussian distributions should all be of equal perplexity.
}
\references{
L.J.P. van der Maaten and G.E. Hinton. ``Visualizing
   High-Dimensional Data Using t-SNE.'' \emph{Journal of Machine Learning
   Research} 9(Nov):2579-2605, 2008. \href{https://lvdmaaten.github.io/publications/papers/JMLR_2008.pdf}{PDF.}
}
