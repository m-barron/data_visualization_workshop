#################################################################
########## Data Vizualization Workshop - Master Script ##########
#################################################################
#
# Author - Martin Barron
# Date - 10/24/2017
#
#

# install.packages("ggplot2")
# load package and data
options(scipen=999)  # turn-off scientific notation like 1e+48
library(ggplot2)
theme_set(theme_bw())  # pre-set the bw theme.
data("midwest", package = "ggplot2")

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest") +
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) 
 

plot(gg)

ggsave(gg, file="goal_plot.tiff")


### Exercises 1 - 

# 1
ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point() # Use geom point to add points.

# 2
ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point(color="red") # Use geom point to add points.

# 3

ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point(aes(color = popdensity)) # Use geom point to add points.

# 4

ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point(aes(color = popdensity), size=3) # Use geom point to add points.

# 5 

ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point(aes(color = popdensity, size=poptotal)) # Use geom point to add points.

# 6 

ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point(aes(color = popdensity, size=poptotal)) + # Use geom point to add points.
  geom_smooth()


### Exercises 2 

# 1 
ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point() # Use geom point to add points.

# 2
ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point() + # Use geom point to add points.
  geom_smooth(method='glm')

# 3
ggplot(midwest, aes(x=percollege, y=percbelowpoverty)) + 
  geom_point() + # Use geom point to add points.
  geom_line(stat = "smooth", method='lm')

# 4 
ggplot(midwest, aes(x=as.factor(inmetro), fill=state)) + 
  geom_bar(position="dodge")






























































