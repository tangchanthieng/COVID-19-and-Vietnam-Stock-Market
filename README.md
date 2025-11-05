# COVID-19 Impact on Vietnam Stock Market Volatility

**One-liner:** Quantitative analysis testing how COVID-driven sentiment (cov_DSI) affected sector returns and volatility across Vietnam market sectors (Jan 31, 2020 — Jun 30, 2022).

---

## 1. Project Overview
This repository contains a reproducible Jupyter notebook (`covid_stock.ipynb`) and a supporting dataset (`marketdata.xlsx`) that implement a two-stage quantitative pipeline:
1. OLS regressions to estimate mean effects of COVID (cov_DSI) and controls on sector returns.  
2. GARCH-X (GARCH with exogenous regressors in the mean) to model and forecast conditional volatility, with robust residual diagnostics.

The analysis covers multiple sector portfolios (wholesale, retail, finance, industry, gas, real estate) and emphasizes model validation and reproducibility for analytical review and interview/demo purposes.

---

## 2. Process Overview

### 2.1 Business Objective
Evaluate whether the COVID shock (proxied by `cov_DSI`) materially impacted sector returns and their volatility in Vietnam — and quantify the direction, magnitude, and robustness of that effect to inform risk management and tactical asset allocation decisions.

### 2.2 Scope
- Timeframe: **2020-01-31** to **2022-06-30** (monthly observations).
- Data: `marketdata.xlsx` (sector returns, liquidity proxies `li_*`, trading volumes `tv_*`, market efficiency `me_*`, market-to-book `mtb_*`, DSI & COVID indicators).
- Methods: OLS (mean equation) + GARCH-X (volatility), residual diagnostics (standardized residuals, ACF, Ljung-Box).

### 2.3 Business Requirements
- Reproducible notebook that runs end-to-end with `marketdata.xlsx` in the repository root.
- Clear separation of mean and volatility modeling (OLS → GARCH-X) per sector.
- Diagnostics and validation steps included and executed for every fitted model.
- Visual outputs: residual diagnostics, volatility plots, coefficient tables for stakeholder review.

### 2.4 Success Criteria
- The notebook executes without errors in a clean environment (dependencies installed).
- Models pass basic diagnostics (no significant autocorrelation in standardized residuals by Ljung-Box at conventional lags, ACF behaves as expected). If diagnostics fail, the repo shows model re-specification attempts.
- Results are reproducible: key tables (coefficients, p-values) and plots are generated and saved when the notebook is executed.
- Code is readable, modular enough to extract individual scripts for productionization if required.

---

## 3. User stories & Acceptance criteria

**User story 1 — Data Scientist / Peer Reviewer**  
_As a data scientist, I want to audit modeling choices and validate robustness._  
**Acceptance criteria:** Code shows data pre-processing steps, OLS and GARCH-X model specification (`arch_model(mean='ARX', x=..., vol='Garch', p=1,q=1, dist='StudentsT')`), and diagnostic outputs (std residuals, ACF, Ljung-Box). All scripts are runnable.

**User story 2 — Business Stakeholder**  
_As a portfolio manager, I want an evidence-based assessment of whether COVID materially increased risk for specific sectors._  
**Acceptance criteria:** For each sector, the notebook provides: (a) estimated effect of `cov_DSI` on returns with p-values, (b) conditional volatility estimates and plots, (c) short summary interpretation and limitations section.

---

## 4. Flowchart

<img width="484" height="683" alt="image" src="https://github.com/user-attachments/assets/57f0a401-09fe-47ae-8a8a-14172dbd43c1" />


---

## 5. Feedback and Contributions
- **Issues:** Use GitHub Issues for reproducibility problems, data questions, or to request additional sector analyses. Be precise: include the notebook cell number and traceback.  
- **Contributions:** Pull requests are welcome for (a) extending the model set (e.g. EGARCH, GJR-GARCH), (b) adding robustness checks (different lag structures, alternative COVID proxies), or (c) turning analysis into modular scripts. Follow standard fork → branch → PR workflow.

---

## 6. References (selected)

Seo, S. W., & Kim, J. S. (2015). The information content of option-implied information for volatility forecasting with investor sentiment. Journal of Banking & Finance, 50, 106-120.

Baker, S. R., Bloom, N., Davis, S. J., Kost, K. J., Sammon, M. C., & Viratyosin, T. (2020). The unprecedented stock market impact of COVID-19 (No. w26945). national Bureau of economic research.

Wang, H., Xu, L., & Sharma, S. S. (2021). Does investor attention increase stock market volatility during the COVID-19 pandemic?. Pacific-Basin Finance Journal, 69, 101638.

---


