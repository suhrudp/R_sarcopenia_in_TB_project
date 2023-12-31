---
title: "Sarcopenia in TB Sample Size Calculation"
author: "SP"
date: "2023-03-21"
output:
  html_document: default
  word_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r include=FALSE}
library(WebPower)
library(Hmisc)
```

## SAMPLE SIZE

```{r echo=FALSE}
wp.regression(p1 = 5, f2 = 0.25, alpha = 0.05, power = 0.9)
```

# The sample size required to run a linear regression analysis to predict hand grip strength (continuous) with the N/LP ratio (continuous) with 
# 4 adjusting variables is 72 patients. The alpha error rate assumed is 5%, with a power of 90%. This sample size is calculated to detect a 
# moderate coefficient of determination for the entire model (R\^2 = 0.2, Cohen's f\^2 = 0.25).[1,2]

## POWER FOR ORDINAL REGRESSION

```{r echo=FALSE}
p <- c(0.4, 0.3, 0.2, 0.1)
popower(p, 4, n = 72, alpha = 0.05)
```

# Power is also calculated to run an ordinal logistic regression analysis to predict handgrip strength (ordinal with 4 levels with expected 
# proportions of 0.4, 0.3, 0.2, and 0.1 in the above normal, normal, weak, and minimal groups) with the N/LP ratio (continuous). The alpha 
# error rate assumed is 5% with a total sample size of 72. The estimated power is 88.8%. Power is estimated to detect a medium sized odds ratio 
# (OR = 4).[3]

## REFERENCES

# 1.  Cohen, J. (1988). Statistical Power Analysis for the Behavioral Sciences (2nd ed.). Routledge. <https://doi.org/10.4324/9780203771587>
# 2.  Selya AS, Rose JS, Dierker LC, Hedeker D and Mermelstein RJ (2012) A practical guide to calculating Cohen\'s *f*^2^, a measure of 
# local effect size, from PROC MIXED. *Front. Psychology* **3**:111. doi: 10.3389/fpsyg.2012.00111
# 3.  Henian Chen, Patricia Cohen & Sophie Chen (2010) How Big is a Big Odds Ratio? Interpreting the Magnitudes of Odds Ratios in 
# Epidemiological Studies, Communications in Statistics - Simulation and Computation, 39:4, 860-864, DOI: [10.1080/03610911003650383]
# (https://doi.org/10.1080/03610911003650383)
