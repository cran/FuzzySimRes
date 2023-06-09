% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EpistemicCorrectedVariance.R
\name{EpistemicCorrectedVariance}
\alias{EpistemicCorrectedVariance}
\title{Calculate the corrected variance using the epistemic bootstrap.}
\usage{
EpistemicCorrectedVariance(
  fuzzySample,
  cutsNumber = 1,
  bootstrapMethod = "std"
)
}
\arguments{
\item{fuzzySample}{Sample of fuzzy numbers given in the form of a list or as a single number.}

\item{cutsNumber}{Number of cuts used in the epistemic bootstrap.}

\item{bootstrapMethod}{The standard (\code{std}) or antithetic (\code{anti}) method used for the epistemic bootstrap.}
}
\value{
The output is given in the form of a real number (the estimator of the variance).
}
\description{
`EpistemicCorrectedVariance` calculates the corrected estimator of the variance for the fuzzy sample using the epistemic bootstrap approach.
}
\details{
For the given initial sample, the function calculates the corrected estimator of the variance
 using the standard (if \code{bootstrapMethod} is set to
\code{"std"}) or the antithetic (when \code{bootstrapMethod="anti"}) epistemic bootstrap.
The initial sample should be given in the form of a list of numbers or a single number.
These values have to be the fuzzy numbers defined in the \code{FuzzyNumbers} package.
The corrected estimator of the variance separates the within- and between-group variations.
For the details, see (Grzegorzewski, Romaniuk, 2022a).
}
\examples{

# seed PRNG

set.seed(1234)

# generate an initial fuzzy sample

list1<-SimulateSample(20,originalRandomDist="rnorm",parametersOriginalRD=list(mean=0,sd=1),
increasesCoreRandomDist="rexp", parametersCoreIncreasesRD=list(rate=2),
supportLeftRandomDist="runif",parametersSupportLeftRD=list(min=0,max=0.6),
supportRightRandomDist="runif", parametersSupportRightRD=list(min=0,max=0.6),
type="trapezoidal")



# calculate the corrected variance using the standard epistemic bootstrap approach

EpistemicCorrectedVariance(list1$value,cutsNumber = 30)

# calculate the corrected variance using the antithetic epistemic bootstrap approach

EpistemicCorrectedVariance(list1$value,cutsNumber = 30,bootstrapMethod="anti")


}
\references{
Grzegorzewski, P., Romaniuk, M. (2022)
Bootstrap Methods for Epistemic Fuzzy Data.
International Journal of Applied Mathematics and Computer Science, 32(2)

Grzegorzewski, P., Romaniuk, M. (2022)
Bootstrapped Kolmogorov-Smirnov Test for Epistemic Fuzzy Data.
Communications in Computer and Information Science, CCIS 1602, pp. 494-507, Springer

Gagolewski, M., Caha, J. (2021) FuzzyNumbers Package: Tools to deal with fuzzy numbers in R.
R package version 0.4-7, https://cran.r-project.org/web/packages=FuzzyNumbers
}
\seealso{
\code{\link{EpistemicMean}} for the epistemic estimator of the mean,
\code{\link{EpistemicEstimator}} for the general function concerning the epistemic estimator calculation

Other epistemic estimators: 
\code{\link{EpistemicMean}()}
}
\concept{epistemic estimators}
