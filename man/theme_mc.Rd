% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_mc.R
\name{theme_mc}
\alias{theme_mc}
\title{The ggplot theme used by MC}
\usage{
theme_mc(legend = TRUE)
}
\arguments{
\item{legend}{If TRUE, adds a bottom-aligned legend to the plot.}
}
\description{
\code{theme_mc()} uses a theme based on \code{theme_fivethirtyeight()} from the
\code{ggthemes} package.
}
\examples{
library(ggplot2)
ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
        geom_point() +
        theme_mc()

}
