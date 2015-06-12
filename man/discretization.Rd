% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/internL_discretization.R
\name{discretization}
\alias{discretization}
\title{discretization}
\usage{
discretization(v, nbclass = NULL, method = "quantile")
}
\arguments{
\item{v}{vector}

\item{nbclass}{number of classes}

\item{method}{methods of discretisation : "sd", "equal", "quantile", "jenks", "geom", "q6"}
}
\value{
numeric
}
\description{
discretization function
}
\details{
bla bla bla
}
\examples{
# 1) SELECT AND VISUALIZE AN INDICATOR

myfield<-TNdeleg$housing

hist(myfield, probability=TRUE, nclass=30)
rug(myfield)
moy <- mean(myfield)
med <- median(myfield)
abline(v=moy,col="red",lwd=3)
abline(v=med,col="blue",lwd=3)

# 2) CHOOSE A METHOD

# Amplitude égale
bornes <- discretization(v=myfield, nbclass=6, method="equal")
round(bornes, 0)

# Progression géométrique
bornes <- discretization(v=myfield, nbclass=8, method="geom")
round(bornes, 0)

# 3) PLOT THE CLASSES

# Histogramme des classes
#hist(myfield, probability=TRUE, breaks=bornes,col="#F0D9F9")
#rug(myfield)
#moy <- mean(myfield)
#med <- median(myfield)
#abline(v=moy,col="red",lwd=3)
#abline(v=med,col="blue",lwd=3)
}
