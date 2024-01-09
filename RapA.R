library(tidyverse)
RapA = read.csv("C:\\Users\\amrut\\OneDrive\\Desktop\\RapA.csv")
glimpse (RapA)

ggplot(RapA, aes(x = Induction,
               y = OD,
               col = Phosphate)) +
  geom_point(size = 3) +
  geom_smooth(aes(x = Induction,
                  y = OD,
                  col = Phosphate, fill = Phosphate), method = "lm")

model = lm(OD~Phosphate*Induction, data = RapA)
summary(model)

ggplot(RapA, aes(x = Induction,
               y = OD,
               col = Phosphate)) + 
  geom_point(size = 3) +
  geom_abline(intercept = 0.12506, slope = 0.11095, col = "#F8766D", linewidth = 1.0) +
  geom_abline(intercept = 0.21663, slope = 0.19094, col = "#00BFC4", linewidth = 1.0) +
  ylab(expression(Biofilm~(OD[550])))+
  xlab("IPTG induction")  
