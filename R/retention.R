#' Determining retention status for each student
#'
#' `retention()` takes a data frame that includes at least an identification
#' number for each student and a term code for each student, and determines
#' whether a student who was enrolled in a certain semester was also enrolled in
#' another semester of the user's choice.
#'
#' @param data Input data frame. This should have at least a column that uniquely
#' identifies the students and a column that indicates the term code that the
#' student was registered for.
#' @param first_semester The base semester for which retention is determined from.
#' @param next_semester The semester in which we are looking to see if the student
#' was retained.
#' @param pidm_col The index for the column that contains student identification
#' details. Default is 1.
#' @param term_code_col The index for the column that contains term code details.
#' Default is 2.
#' @returns A data frame of all students enrolled in `first_semester` with a
#' new column of logicals added indicating whether the student was retained to
#' `second_semester`.
#' @examples
#' df <- tibble(pidm = c(1:5, 1, 2, 5, 1, 4), term_code = c(rep(202120,5), rep(202220,3), rep(202320,2)))
#' retention(df, 202120, 202220)
#' @export
retention <- function(data, first_semester, next_semester, pidm_col = 1, term_code_col = 2) {
        first_students <- data[as.vector(data[,term_code_col] == first_semester),]
        second_students <- data[as.vector(data[,term_code_col] == next_semester),]
        first_students |>
                mutate(Retained = pull(first_students,pidm_col) %in% pull(second_students,pidm_col))
}
