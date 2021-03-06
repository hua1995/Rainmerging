% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/DS.R
\name{DS}
\alias{DS}
\title{Double kernel residual Smoothing}
\usage{
DS(sat, gauge, longlat = TRUE, cross.val = FALSE)
}
\arguments{
\item{sat}{is a list
sat[[2]] is a data.frame with dimensions nrow=no of satellite
pixels, containing columns x=x-coordinates, y=y-coordinates
sat  [[1]] is a zoo object with dimensions ncol=no of satellite
pixels, nrow=no of timestep}

\item{gauge}{is a list:
gauge[[2]] is a data.frame with dimensions nrow=no of stations,
containing columns x=x-coordinates, y=y-coordinates
gauge[[1]] is a zoo object with dimensions ncol=no of stations,
nrow=no of timestep}

\item{longlat}{is a flag to describe the coordinate grids of spatial data.
Defaults to TRUE i.e. on long-lat notation}

\item{cross.val}{option TRUE=in cross validation mode; default FALSE}
}
\value{
Zs merging output - zoo object with dimensions == dimensions sat
[["ts""]

crossval cross validation- zoo object with dimensions == dimensions
gauge[["ts""]
}
\description{
This function merges satellite and rain gauge fields using
the double kernel smoothing of the residuals following Li & #' Shao (2010)
References: Li, M. and Shao, Q. (2010).
An improved statistical approach to merge satellite rainfall
estimates and raingauge data. Journal of Hydrology, 385(1-4):51-64.
Silverman, B. (1986). Density Estimation for Statistics and Data Analysis.
Chapman and Hall/CRC Monographs on Statistics and Applied Probability Series.
Chapman and Hall/CRC.
}
\examples{
# DS_out <- DS(sat, gauge)
# DS_cv  <- DS(sat, gauge, cross.val=TRUE)
}
\author{
Zed Zulkafli, Daniele Nerini
}

