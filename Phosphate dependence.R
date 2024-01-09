library(tidyverse)
Pi = read.csv("C:\\Users\\amrut\\OneDrive\\Desktop\\Phosphate dependence.csv")
glimpse (Pi)

ggplot(Pi, aes(x = Induction,
               y = OD,
               col = Phosphate)) +
  geom_point(size = 3) +
  geom_smooth(aes(x = Induction,
                  y = OD,
                  col = Phosphate, fill = Phosphate), method = "lm")

model = lm(OD~Phosphate*Induction, data = Pi)
summary(model)

ggplot(Pi, aes(x = Induction,
                   y = OD,
                   col = Phosphate)) + 
  geom_point(size = 3) +
  geom_abline(intercept = 0.42113, slope = 0.55481, col = "#F8766D", linewidth = 1.0) +
  geom_abline(intercept = 0.17023, slope = 0.12461, col = "#00BFC4", linewidth = 1.0) +
  ylab(expression(Biofilm~(OD[550])))+
  xlab("IPTG induction")  
 