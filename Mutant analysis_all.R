library(tidyverse)
jhandu = read.csv("C:\\Users\\amrut\\OneDrive\\Desktop\\Effect of mutants_LinearmodelData.csv")
glimpse(jhandu)

ggplot(jhandu, aes(x = Induction, y= OD, col= Mutation))+
  geom_point(size = 3)+
  xlim(-0.25,1.25)+
  ylim(0.0, 1.00) +
  geom_smooth(aes(x = Induction, 
                  y = OD,
                  col = Mutation, fill = Mutation), method = "lm")

model = lm( OD~DvhG.presence + Mutation*Induction, data = jhandu)
summary(model)

ggplot(jhandu, aes(x = Induction,
                   y = OD,
                   col = Mutation)) + 
  geom_point(size = 3)+
  xlim(-0.25, 1.25)+
  ylim(0.0, 1.2)+
  geom_abline(intercept = 0.75144, slope = 0.25350, col = "#F8766D", linewidth = 1.0)+
  geom_abline(intercept = 0.67911, slope = 0.09433, col = "#7CAE00", linewidth = 1.0)+
  geom_abline(intercept = 0.65511, slope = 0.05733, col = "#00BFC4", linewidth = 1.0) +
  geom_abline(intercept = 0.72044, slope = 0.22733, col = "#C77CFF", linewidth = 1.0)
