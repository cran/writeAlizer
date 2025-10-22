## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  # Run chunks locally/CI when NOT_CRAN=true; skip on CRAN
  eval = identical(Sys.getenv("NOT_CRAN"), "true")
)

