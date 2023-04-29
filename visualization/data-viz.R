# import library tidyverse
library(tidyverse)

# create scatter plot for mpg dataset
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, hwy))

# create scatter plot for hwy vs cyl
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

# scatter plot class vs drv
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

# scatter plot with class as color
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# scatter plot with class as size       
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# scatter plot with class as alpha
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# scatter plot with class as shape
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = manufacturer))

# akan ngebuat scatter plot dengan warna jika displ < 5
# dan legend nya jadi TRUE and FALSE
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = displ < 5))

# membuat subplot pakai Facets
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# membuat subplot dua vars 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(drv ~ cyl)

# subplot dengan dua vars continuous
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(cty ~ cyl)

# combine scatterplot dan line plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() + 
  geom_smooth()

# create count plot
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# create plot with coordinate system
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip()
