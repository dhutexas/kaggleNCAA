% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parseBracket.R
\name{parseBracket}
\alias{parseBracket}
\title{Parse a Kaggle-formatted bracket}
\usage{
parseBracket(f, w = NULL)
}
\arguments{
\item{f}{Path to the Kaggle-formatted bracket csv}

\item{w}{0 for women's bracket, 1 for mens.  If NULL will be infered from the file name (e.g. "women" in name = 1, otherwise men).}
}
\value{
a data.table
}
\description{
Inputs a bracket in kaggle file format and outputs a data.table
}
\details{
Reads the csv using data.table::fread, then uses splitstr to parse.
problems
}
\note{
Will only have 1 row per game, where team_1 is the lower id team
}
\examples{
f <- system.file('kaggle_data/seed_benchmark_women.csv', package = "kaggleNCAA", mustWork=TRUE)
dat <- parseBracket(f)
head(dat)
}
