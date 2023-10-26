time ./bcdata.sh "'CRKD', 'CARP', 'PARS'" && time ./background_layers.sh "'CRKD', 'CARP','PARS'"

time ./bcdata.sh "'LARL', 'SLOC', 'KOTL'" && time ./background_layers.sh  "'LARL', 'SLOC', 'KOTL'"

# sern_simpcw_2023
time ./bcdata.sh "'ADMS', 'MORK', 'UFRA', 'CANO', 'LNTH', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL'" && time ./background_layers.sh  "'ADMS', 'MORK', 'UFRA', 'CANO', 'LNTH', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL'"

# sern_lchl_necr_fran_2023
time ./bcdata.sh "'LCHL', 'NECR', 'FRAN'" && time ./background_layers.sh  "'LCHL', 'NECR', 'FRAN'"

# test_revl_clrh_2023
time ./bcdata.sh "'REVL', 'CLRH'" && time ./background_layers.sh  "'REVL', 'CLRH'"

# test_larl_adms
time ./bcdata.sh "'LARL', 'ADMS'" && time ./background_layers.sh  "'LARL', 'ADMS'"

# test_adms
time ./bcdata.sh "'ADMS'" && time ./background_layers.sh  "'ADMS'"

time ./bcdata.sh "'BABL'" && time ./background_layers.sh  "'BABL'"

# sern_pg_2023
time ./bcdata.sh "'TABR', 'WILL', 'BOWR', 'MORK', 'LCHL', 'LSAL'" && time ./background_layers.sh  "'TABR', 'WILL', 'BOWR', 'MORK', 'LCHL', 'LSAL'"
