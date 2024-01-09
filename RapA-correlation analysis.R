library(tidyverse)
RapA = read.csv("C:\\Users\\amrut\\OneDrive\\Desktop\\O'Toole Lab\\Codes\\cdG dependence\\rapA_lowPi.csv")
glimpse (RapA)

ggplot(RapA, aes(x = GFP,
                 y = OD,
                 col = Strain)) +
  geom_point(size = 5) 

coeff = cor.test(formula = ~GFP + OD, 
                 data = RapA)

print (coeff)


