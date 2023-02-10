#' The ggplot theme used by MC
#'
#' `theme_mc()` uses a theme based on `theme_fivethirtyeight()` from the
#' `ggthemes` package.
#' @examples
#' ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) + geom_point() + theme_mc()
#'
#' @export
theme_mc <- function() {
        theme_fivethirtyeight() +
                theme(legend.position = "none",
                      panel.grid.major.y = element_blank())
}

#' Use MC's colors for a fill aesthetic
#'
#' `scale_fill_mc()` uses the main colors for the College as a fill option
#' for a categorical data set.
#'
#' @examples
#' ggplot(data = mtcars, aes(x = cyl, fill = factor(cyl))) + geom_histogram() + scale_fill_mc()
#' @export
scale_fill_mc <- function() {
        scale_fill_manual(values = c("#51237f","9FA1A4","#666666","6E4D94",
                                     "#FF5E3A","0E8AD9","28A689","#000000",
                                     "#FFFFFF"))
}

#' Use MC's colors for a color aesthetic
#'
#' `scale_color_mc()` uses the main colors for the College as a color option for
#' a categorical data set.
#'
#' @examples
#' ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) + geom_point() + scale_color_mc()
#' @export
scale_color_mc <- function() {
        scale_color_manual(values = c("#51237f","9FA1A4","#666666","6E4D94",
                                      "#FF5E3A","0E8AD9","28A689","#000000",
                                      "#FFFFFF"))
}
