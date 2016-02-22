library(rio)
library(dplyr)

tx <- import("tx.csv")
N <- nrow(tx)
n <- 600

# SRS
set.seed(1)

tx_srs <- sample_n(tx, 600)

# Stratify by "size"

tx %>% 
  group_by(Size) %>% 
  sample_frac(n/N) -> tx_bySize


