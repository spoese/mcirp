#' The ggplot theme used by MC
#'
#' `theme_mc()` uses a theme based on `theme_fivethirtyeight()` from the
#' `ggthemes` package.
#'
#' @param legend If TRUE, adds a bottom-aligned legend to the plot.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
#'         geom_point() +
#'         theme_mc()
#'
#' @export
theme_mc <- function(legend = TRUE) {
        if (legend) {
                ggthemes::theme_fivethirtyeight() +
                        theme(panel.grid.major.y = element_blank())
        } else {
                ggthemes::theme_fivethirtyeight() +
                        theme(legend.position = "none",
                              panel.grid.major.y = element_blank())
        }
}

#' Use MC's colors for a fill aesthetic
#'
#' `scale_fill_mc()` uses the main colors for the College as a fill option
#' for a categorical data set.
#'
#' @param idx Integer vector of indices from the color palette to use.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl, fill = factor(cyl))) +
#'         geom_histogram() +
#'         scale_fill_mc()
#' @export
scale_fill_mc <- function(idx = 1:9) {
        colors <- c("#51237f","#0095C8","#FBA93E","#51C9E7",
                    "#F92329","#F15922","#00AC9B","#B82A91", "#000000",
                    "#FFFFFF")
        scale_fill_manual(values = colors[idx])
}

#' Use MC's colors for a color aesthetic
#'
#' `scale_color_mc()` uses the main colors for the College as a color option for
#' a categorical data set.
#'
#' @param idx Integer vector of indices from the color palette to use.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
#'         geom_point() +
#'         scale_color_mc()
#' @export
scale_color_mc <- function(idx = 1:9) {
        colors <- c("#51237f","#0095C8","#FBA93E","#51C9E7",
                    "#F92329","#F15922","#00AC9B","#B82A91", "#000000",
                    "#FFFFFF")
        scale_color_manual(values = colors[idx])
}
