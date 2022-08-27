##pull the cv info from the Bulkley File
# remotes::install_github(c("ropensci/tabulizerjars", "ropensci/tabulizer"))

# this is not worth the time - abort
{
  library(tidyverse)
  # library(readwritesqlite)
  # library(data.table)
  # library(sf)
  # # library(readxl)
  library(tabulizer)
}

path <- "data/2003 - Guidelinesfor In-stream and Off-Channel Routine Ef.pdf"


##define the area to extract table from for first page
# we need to extract each piece seperatelyl becasue of the weird formating

#you would run with this the first time
tab_trim1 <- tabulizer::locate_areas(path, 29)
tab_trim2 <- tabulizer::locate_areas(path, 29)
tab_trim3 <- tabulizer::locate_areas(path, 29)
tab_trim4 <- tabulizer::locate_areas(path, 29)

##since we have done this before though - numbers below are results
# top      left    bottom     right
# 175.90189  80.37736 237.48679 617.32075

# tab_trim_17 = list(c(108.89680,  75.11744, 536.49822, 719.06050 ))


##extract the tables useing the areas you defined
table1 <- tabulizer::extract_tables(path,
                                      pages = 29:29,
                                      method = "lattice",
                                      area = tab_trim1)

table2 <- tabulizer::extract_tables(path,
                                    pages = 29:29,
                                    method = "lattice",
                                    area = tab_trim2)
  # set_names(17)


test_view <- table %>%
  map(as_tibble) %>%
  pluck(1)

test_view2 <- table2 %>%
  map(as_tibble) %>%
  pluck(1)

test_view <- table1 %>%
  as_tibble()
