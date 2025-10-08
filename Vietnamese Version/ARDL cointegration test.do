//variables preparation
tsset Observation
dfuller RETURN
reg RETURN l.RETURN
predict e, residuals
estat archlm
arch RETURN l.RETURN, arch(1) garch(1)
predict VOL, variance
gen lnTOTAL = log(TOTAL)
gen ROIL = d.OIL/l.OIL
gen RGOLD = d.GOLD/l.GOLD
gen REX = d.EXCHANGE/l.EXCHANGE
sum

//stationary test ADF-AIC
dfuller VOL
dfuller d.VOL
dfuller lnTOTAL
dfuller d.lnTOTAL
dfuller ROIL
dfuller RGOLD
dfuller REX

//MODELS AND DIAGNOSTICS
varsoc VOL lnTOTAL ROIL RGOLD REX
ardl VOL lnTOTAL ROIL RGOLD REX, maxlags(4) aic
matrix list e(lags)
ardl VOL lnTOTAL ROIL RGOLD REX, lags(3 4 4 4 0) ec btest
ardl VOL lnTOTAL ROIL RGOLD REX, lags(3 4 4 4 0) ec
ardl VOL lnTOTAL ROIL RGOLD REX, lags(3 4 4 4 0) regstore(ecreg)
estimates restore ecreg
regress
estat bgodfrey
estat imtest, white
estat archlm
cusum6 VOL lnTOTAL ROIL RGOLD REX, cs(cusum) lw(lower) uw(upper)

