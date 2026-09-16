## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----load-package-------------------------------------------------------------
library(writeAlizer)

## ----import-sample------------------------------------------------------------
rb_path <- system.file("extdata", "sample_rb.csv", package = "writeAlizer")
rb <- import_rb(rb_path)
head(rb$ID)

## ----offline-demo-------------------------------------------------------------
local({
  old <- options(writeAlizer.mock_dir = NULL, writeAlizer.offline = TRUE)
  on.exit(options(old))
  example_parent <- tempfile("wa-example-")
  wa_seed_example_models(dir = example_parent)
  on.exit(unlink(example_parent, recursive = TRUE), add = TRUE)
  demo <- predict_quality("example", rb)
  head(demo)
})

## ----import-all---------------------------------------------------------------
rb <- import_rb(system.file("extdata", "sample_rb.csv", package = "writeAlizer"))
coh <- import_coh(system.file("extdata", "sample_coh.csv", package = "writeAlizer"))
gam <- import_gamet(system.file("extdata", "sample_gamet.csv", package = "writeAlizer"))

