#combining pit tag data to individual fish data so that we can copy and paste directly into submission template

source('scripts/packages.R')

#import the pit tag csv
path <- '../../repo/dff-2022/data/pars/tag_01_01.csv'

pit_tag <- read.csv(path)

#separate the pit tag out from the rest of the info in the pit tag csv
tags <- tidyr::separate(pit_tag, col=tag, into=c('date', 'tag_id'), sep=27)

#generate row numbers
rows <- dplyr::mutate(tags, id= row_number())

#import csv with fish data
path2 <- '../../repo/dff-2022/data/pars/fish_data.csv'

fish <- read.csv(path2)

#join fish csv with pit tag csv based on tag row number
dplyr::left_join(tags, fish, by=c("tag_row"="rows"))




