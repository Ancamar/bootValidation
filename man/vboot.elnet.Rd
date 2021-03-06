% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallel_vboot.R
\name{vboot.elnet}
\alias{vboot.elnet}
\title{Internal bootstraping validation linear glmnet model}
\usage{
\method{vboot}{elnet}(
  fit,
  x,
  y,
  s,
  gamma = NULL,
  nfolds = 5,
  B = 200,
  cv_replicates = 100,
  n_cores = max(1, parallel::detectCores() - 1)
)
}
\arguments{
\item{fit}{Object from glmnet fit}

\item{x}{A matrix of the predictors, each row is an observation vector.}

\item{y}{A vector of response variable. Should be numeric}

\item{s}{Value of the penalty parameter "lambda" selected from the original 'cv.glmnet'}

\item{gamma}{Value of "gamma" parameter selected for relaxed model}

\item{nfolds}{Number of folds for cross validation as in 'cv.glmnet'}

\item{B}{Number of bootsrap samples}

\item{cv_replicates}{Number of replicates for the cross-validation step}

\item{n_cores}{number of cores to use in parallel. Default detectCores()-1}
}
\description{
Validate glmnet linear regression using bootstrap.
}
