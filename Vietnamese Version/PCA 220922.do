***** hoi qui loading

reg rsi_i d_ex d_gold d_oil
reg rsi_i d_ex d_oil
reg rsi_i d_gold d_oil
reg rsi_i d_oil
hettest
bgodfrey
varsoc  rsi_i d_oil
newey  rsi_i d_oil, lag(2)
predict rsi, residual
reg pli_i d_oil d_ex d_gold
reg pli_i d_oil d_ex
reg pli_i d_oil
hettest
bgodfrey
varsoc pli_i d_oil
newey pli_i d_oil, lag(2)
predict pli
drop pli
predict pli, residual
reg atr_m d_gold d_ex d_oil
hettest
bgodfrey
reg atr_m d_gold d_ex d_oil, robust
reg atr_m d_ex , robust
reg atr_m d_ex
hettest
bgodfrey
predict atrm, residual
reg tv_m d_oil d_ex d_gold
hettest
bgodfrey
newey tv_m d_oil d_ex d_gold
varsoc tv_m d_oil d_ex d_gold
newey tv_m d_oil d_ex d_gold, lag(4)
reg  tv_m d_ex
hettest
bgodfrey
varsoc  tv_m d_ex
newey  tv_m d_ex, lag(4)
predict tvm, residual
gen lrsi =l.rsi
gen lpli =l.pli
gen latrm =l.atrm
gen ltvm =l.tvm
*********** hsi1
pca rsi pli atrm tvm lrsi lpli latrm ltvm
estat kmo
corr rsi pli atrm tvm lrsi lpli latrm ltvm hsi
/*
pca rsi pli tvm lrsi lpli latrm ltvm
estat kmo
pca rsi pli tvm lrsi lpli ltvm
estat kmo
*/
pca rsi pli tvm lpli ltvm
estat kmo
predict hsi1
corr rsi pli tvm lpli ltvm hsi1
corr hsi hsi1
reg hsi1 covid
hettest
bgodfrey
reg hsi1 covid
varsoc hsi1 covid
newey hsi1 covid, lag(4)
predict ncov_hsi1, residual
gen cov_hsi1 = hsi1 - ncov_hsi1 -  .8716659
gen del_hsi1 = hsi1 - l.hsi1
