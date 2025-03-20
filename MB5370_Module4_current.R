library(usethis)
use_git_config(user.name = "Alice Pilditch", user.email = "alice.pilditch@my.jcu.edu.au")



---
  title: "Module4"
author: "Alice Pilditch"
date: "2025-03-19"
output: html_document
--- 
  
  # Workshop 1: 2.17 creating ggplot
  ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# Changing point colour by class
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = class))

# Changing point size by class
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

# Changing point transparency by class (alpha)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Changing point shape by class 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

#2.20 Facet and panal plots
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

#2.21 Fitting simple lines
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))


ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) + 
  geom_smooth(
    mapping = aes(x = displ, y = hwy, colour = drv),
    show.legend = FALSE,
  )

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

