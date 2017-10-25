#################################################################
########## Data Vizualization Workshop - Master Script ##########
#################################################################
#
# Author - Martin Barron
# Date - 10/24/2017
#
#

library("ggplot2")
data("midwest", package="ggplot2")

dat <- midwest


## Histogram

ggplot(midwest, aes(x = percollege)) +
  geom_histogram()


## Scatter Plot

# Relationship between poverty and college education

ggplot(midwest,
       aes(x=percbelowpoverty,
           y=percollege,
           color=state))+
  geom_point()
























































































