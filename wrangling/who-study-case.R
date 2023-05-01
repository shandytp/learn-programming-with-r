# Case Study Exercise WHO data

# Arrange data into pivot and count for each cols 
who1 <- who %>%
  pivot_longer(
    cols = new_sp_m014:newrel_f65,
    names_to = "key",
    values_to = "cases",
    values_drop_na = TRUE
  )

# Count data for each key
who1 %>%
  count(key)

# Change values from "newrel" to "new_rel"
who2 <- who1 %>%
  mutate(key = stringr::str_replace(key, "newrel", "new_rel"))

# Separate value to each code
who3 <- who2 %>%
  separate(key, c("new", "type", "sexage"), sep = "_")

# Drop new, iso2, iso3 cols
who4 <- who3 %>%
  select(-new, -iso2, -iso3)

# Separate sexage into sex and age
who5 <- who4 %>%
  separate(sexage, c("sex", "age"), sep = 1)

who5 %>%
  group_by(country, year, sex) %>%
  filter(year > 1995) %>%
  summarise(cases = sum(cases)) %>%
  unite(country_sex, country, sex, remove = FALSE) %>%
  ggplot(aes(x = year, y = cases, group = country_sex, colour = sex)) +
  geom_line()
