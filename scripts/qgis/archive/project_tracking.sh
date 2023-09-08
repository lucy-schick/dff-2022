time ./bcdata.sh "'CRKD', 'CARP', 'PARS'" && time ./background_layers.sh "'CRKD', 'CARP','PARS'"

time ./bcdata.sh "'LARL', 'SLOC', 'KOTL'" && time ./background_layers.sh  "'LARL', 'SLOC', 'KOTL'"

time ./bcdata.sh "'KOTL'" && time ./background_layers.sh  "'KOTL'"

time ./bcdata.sh "'UFRA'" && time ./background_layers.sh  "'UFRA'"

time ./bcdata.sh "'MCGR'" && time ./background_layers.sh  "'MCGR'"

# sern_simpcw_2023
time ./bcdata.sh "'MORK', 'UFRA', 'CANO', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL'" && time ./background_layers.sh  "'MORK', 'UFRA', 'CANO', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL'"

time ./bcdata.sh "'UFRA', 'CANO', 'CLWR'" && time ./background_layers.sh  "'UFRA', 'CANO', 'CLWR'"

time ./background_layers_update.sh  "'MORK', 'UFRA', 'CANO'"


# sern_lchl_necr_fran_2023
time ./bcdata.sh "'LCHL', 'NECR', 'FRAN'" && time ./background_layers.sh  "'LCHL', 'NECR', 'FRAN'"

# test_revl_clrh_2023
time ./bcdata.sh "'REVL', 'CLRH'" && time ./background_layers.sh  "'REVL', 'CLRH'"

# test_MORK_2023
time ./bcdata.sh "'MORK'" && time ./background_layers.sh  "'MORK'"
