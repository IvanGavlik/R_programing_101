rod <- c('M', 'Z')
broj_studenata <- c(8789, 12180) # apsolutna frekvencija
df <- data_frame(rod = rod, broj_studenata = broj_studenata)


#izracun relativne frekvencije
sum_apsolutna <- sum(df$broj_studenata)
sum_apsolutna

df2 <- df %>% 
  mutate(relativa_f_proprcija =  round(broj_studenata / sum_apsolutna, 2)) %>% 
  mutate(relativa_f_postotak =  round((broj_studenata / sum_apsolutna) * 100, 2)) %>% 
  View()