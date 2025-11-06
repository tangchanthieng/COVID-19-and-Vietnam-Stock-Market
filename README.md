# COVID-19 Impact on Vietnam Stock Market Volatility

*Tags: COVID-19, Stock Market, GARCH, Investor Sentiment, PCA*

---

## 1. Project Overview

- OLS regressions to estimate mean effects of COVID (cov_DSI) and controls on sector returns.
- GARCH-X (GARCH with exogenous regressors in the mean) to model and forecast conditional volatility, with robust residual diagnostics.

The analysis covers multiple sector portfolios (wholesale, retail, finance, industry, gas, real estate) and emphasizes model validation and reproducibility for analytical review and interview/demo purposes.

---

### 2. Objectives

Evaluate whether the COVID shock (proxied by `cov_DSI`) materially impacted sector returns and their volatility in Vietnam — and quantify the direction, magnitude, and robustness of that effect to inform risk management and tactical asset allocation decisions.

### 3. Requirements

- Reproducible notebook that runs end-to-end with `marketdata.xlsx` in the repository root.
- Clear separation of mean and volatility modeling (OLS → GARCH-X) per sector.
- Diagnostics and validation steps included and executed for every fitted model.
- Visual outputs: residual diagnostics, volatility plots, coefficient tables for stakeholder review.

---

## 4. Flowchart

<img width="484" height="683" alt="image" src="https://github.com/user-attachments/assets/57f0a401-09fe-47ae-8a8a-14172dbd43c1" />

---

## 5. References

Seo, S. W., & Kim, J. S. (2015). The information content of option-implied information for volatility forecasting with investor sentiment. Journal of Banking & Finance, 50, 106-120.

Baker, S. R., Bloom, N., Davis, S. J., Kost, K. J., Sammon, M. C., & Viratyosin, T. (2020). The unprecedented stock market impact of COVID-19 (No. w26945). national Bureau of economic research.

Wang, H., Xu, L., & Sharma, S. S. (2021). Does investor attention increase stock market volatility during the COVID-19 pandemic?. Pacific-Basin Finance Journal, 69, 101638.

---


