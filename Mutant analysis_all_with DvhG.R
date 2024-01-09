library(tidyverse)
jhand = read.csv("C:\\Users\\amrut\\OneDrive\\Desktop\\Effect of mutants_LinearmodelData_wDvhG.csv")
glimpse(jhand)

ggplot(jhand, aes(x = Induction, y= OD, col= Mutation))+
  geom_point(size = 3)+
  xlim(-0.25,1.25)+
  ylim(0.0, 0.8) +
  geom_smooth(aes(x = Induction, 
                  y = OD,
                  col = Mutation, fill = Mutation), method = "lm")

model = lm( OD~DvhG.presence + Mutation*Induction, data = jhand)
summary(model)

ggplot(jhand, aes(x = Induction,
                   y = OD,
                   col = Mutation)) + 
  geom_point(size = 3)+
  xlim(-0.25, 1.25)+
  ylim(0.0, 0.8)+
  geom_abline(intercept = 0.30633, slope = 0.37833, col = "#F8766D", linewidth = 1.0)+
  geom_abline(intercept = 0.33, slope = 0.15433, col = "#7CAE00", linewidth = 1.0)+
  geom_abline(intercept = 0.22303, slope = 0.17666, col = "#00BFC4", linewidth = 1.0) +
  geom_abline(intercept = 0.265, slope = 0.341, col = "#C77CFF", linewidth = 1.0)+
  ylab(expression(Biofilm~(OD[550])))+
  xlab("IPTG induction")
