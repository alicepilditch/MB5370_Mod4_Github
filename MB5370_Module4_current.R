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


#2.25 Assignment - Plot deconstruction
# Loading packages
library(dplyr)
library(ggplot2)

# Inputting my data 
croc_data <- data.frame(
  Region = c(
    rep("Southern Gulf Plains", 4),
    rep("Northern Gulf Plains", 3),
    rep("North-western Cape York Peninsula", 7),
    rep("North-eastern Cape York Peninsula", 4),
    rep("Lakefield National Park", 4),
    rep("East Coast Plains", 7),
    rep("Burdekin River Catchment", 3),
    rep("Fitzroy River Catchment", 2)
  ),
  Year = c(1996,1997,1998,1999,
           1997,1998,1999,
           1994,1995,1996,1997,1998,1999,2000,
           1994,1996,1999,2000,
           1997,1998,1999,2000,
           1994,1995,1996,1997,1998,1999,2000,
           1996,1999,2000,
           1998,1999),
  Km_surveyed = c(46.0,239.1,134.9,130.4,
                  93.6,90.8,82.9,
                  180.5,64.0,183.5,168.4,104.9,144.7,64.8,
                  163.2,15.0,77.7,157.6,
                  135.1,202.0,243.0,177.1,
                  18.5,32.0,87.0,374.4,148.3,130.6,268.0,
                  8.5,27.5,21.3,
                  91.3,67.7),
  Hatchlings = c(2,68,5,9,
                 6,4,2,
                 337,309,229,118,101,209,280,
                 9,0,20,56,
                 45,69,45,61,
                 5,3,11,42,54,5,30,
                 0,0,0,
                 7,0)
)

# Calculating hatchlings per km for each record 
croc_data <- croc_data %>%
  mutate(Hatchlings_per_km = Hatchlings / Km_surveyed)

# Summarising mean and SD by region
summary_data <- croc_data %>%
  group_by(Region) %>%
  summarise(
    mean_hatchlings = mean(Hatchlings_per_km, na.rm = TRUE),
    sd_hatchlings = sd(Hatchlings_per_km, na.rm = TRUE),
    .groups = "drop"
  )

# Plotting the data
ggplot(summary_data, aes(x = reorder(Region, -mean_hatchlings), y = mean_hatchlings)) +
  geom_col(fill = "#3BA99C") +
  geom_errorbar(aes(ymin = mean_hatchlings - sd_hatchlings,
                    ymax = mean_hatchlings + sd_hatchlings),
                width = 0.2, color = "black") +
  labs(
    title = "Mean Hatchlings per km by Biogeographical Region",
    x = "Biogeographical Region",
    y = "Mean Hatchlings per km"
  ) +
  theme_minimal(base_size = 12) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        plot.title = element_text(face = "bold", size = 14))

