<<<<<<< HEAD
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

=======
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

f591dbd0c9b6eae429df85d40b042bc7732e50f0


#2.22 Transformations and stats 
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))

#2.22.3 PLotting statistical details
ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
  )
  
#2.23 Aesthetic adjustments 
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Altering transparency (alpha)
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")

# Colouring in bar outlines with no fill colour
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) +
  geom_bar(fill = NA, position = "identity")

# Position "fill" will work like stacking but each set of stacked bars will be the same height
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

# Postion "dodge" will place overlapping objects directly beside one another 
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

# Position "jitter" will add a small amount of random noise to each point to avoid overplotting when points overlap (useful in scatterplots but not barplots)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")


#2.24 Layered grammar of graphics 
# this is a template: ggplot(data = <DATA>) + <GEOM_FUNCTION> (mapping = aes(<MAPPINGS>), stat = <STAT>, position = <POSITION>) + <FACET_FUNCTION>


    
  