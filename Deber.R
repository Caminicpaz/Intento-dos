library(metafor)
getwd()
dat <- read.csv("data_extraction_dicotomica.csv")
dat
dat <- escalc(measure = "OR", ai=e1, n1i=n1, ci=e2, n2i=n2, data=dat)
exp(dat$yi)
dat <- summary(dat)
# transformation: #real -> log natural
# back transformation: log natural -> real  
dat$OR<- exp(dat$yi)
dat$CIL <- exp(dat$ci.lb)
dat$CIUL <- exp(dat$ci.ub)
metadat <- rma(yi=dat$yi, vi=dat$vi, method="DL",data=dat)
predict(metadat,transf=exp, digits=2)
metareml <- rma(yi=dat$yi, vi=dat$vi, method="REML",data=dat)
predict(metareml,transf=exp, digits=2)
forest(metadat, addpred=TRUE, transf=exp)

#EJERCICIO 2

library(forestplot)
library(dplyr)
# Cochrane data from the 'rmeta'-package
cochrane_from_rmeta <- structure(list(mean  = c(NA, NA, 0.578, 0.165, 0.246, 0.700, 0.348, 0.139, 1.017, NA, 0.531), 
                                      lower = c(NA, NA, 0.372, 0.018, 0.072, 0.333, 0.083, 0.016, 0.365, NA, 0.386),
                                      upper = c(NA, NA, 0.898, 1.517, 0.833, 1.474, 1.455, 1.209, 2.831, NA, 0.731)),
                                 .Names = c("mean", "lower", "upper"), 
                                 row.names = c(NA, -11L), 
                                 class = "data.frame")

tabletext <- cbind(c("", "Study", "Auckland", "Block", "Doran", "Gamsu", "Morrison", "Papageorgiou", "Tauesch", NA, "Summary"),
                   c("Deaths", "(steroid)", "36", "1", "4", "14", "3", "1", "8", NA, NA),
                   c("Deaths", "(placebo)", "60", "5", "11", "20", "7", "7", "10", NA, NA),
                   c("", "OR", "0.58", "0.16", "0.25", "0.70", "0.35", "0.14", "1.02", NA, "0.53"))
forestplot(labeltext = tabletext,
           cochrane_from_rmeta,
             is.summary = c(rep(TRUE, 2), rep(FALSE, 8), TRUE),
             clip = c(0.1, 2.5), 
             xlog = TRUE, 
             col = fpColors(box = "royalblue",
                            line = "darkblue",
                            summary = "royalblue"))

#is.summary: lineas de negritas y con rombo 