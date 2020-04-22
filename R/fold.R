fold <- function(code_folding = c("none", "show", "hide")) {
  folding <- default_folding

  if (is.character(code_folding)) {
    folding["source"] <- match.arg(code_folding, c("none", "show", "hide"))
    return(folding)
  }

  if (is.null(names(code_folding)) || !is.list(code_folding)) {
    stop("`code_folding` must be a string or a named list.")
  }


  for (nm in names(code_folding)) {
    folding[nm] <- code_folding[[nm]]
  }
  return(folding)
}