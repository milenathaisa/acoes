library (tidyquant)
library (dplyr)

prices <- c(
  "KLBN4", "BBSE3", "SAPR4", "ALUP11", "CPLE6", 
  "TAEE4", "SMTO3", "GGBR4", "WEGE3", "AMBP3"
) %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices", from = " 2012-01-01") %>%
  mutate(symbol = sub (".SA", "", symbol))

write.table(prices, "prices.csv", sep = ",", row.names = FALSE)
prices <- read.csv("C:/Users/Milen/OneDrive/Documents/acoesmonitoramento/prices.csv") %>%
  mutate(date = as.Date(date))




