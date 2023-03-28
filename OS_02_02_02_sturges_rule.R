# Osnove statistike Jasna Horvat Josipa Mijoč

# broj redaka
sturges_rule <- function(n) {
  n <- (1 + 3.3 * log(n, base = 10))
  return (round(n))
}

# optimalna sirini redaka
sirina_razreda <- function(max, min, k) {
  n <- (max - min) / k
  return (round(n))
}

age <- c(54, 34, 45, 29, 32, 45, 64, 25, 35, 31, 30, 44, 49, 41, 27, 21, 58, 54, 60, 49, 33, 41)
age_broj_redaka = sturges_rule(length(age))

min_a <- age[which.min(age)]
max_a <- age[which.max(age)]
sirina <- sirina_razreda(max =  max_a, min =  min_a, k = age_broj_redaka)

library(dplyr)
df <- data_frame(age)


r <- df %>% 
  mutate(range = cut(age, seq(min_a - 1 , max_a + 1, by = sirina), include.lowest = TRUE, right = FALSE)) %>% 
  group_by(range) %>%
  summarise(freq = n())
r
