
library(vistime)
library(ggplot2)

# First discoveries timeline

firsts <- read.csv(text="event,group,start,end
                       Brazil,Countries,1725-01-01, 1730-01-01
                       Australia,Countries,1851-01-01,1981-01-01
                       S Africa,Countries,1866-01-01,1869-01-01
                       De Beers Mine,De Beers, 1871-05-01,1871-05-01
                       Kimberley Mine,De Beers, 1871-07-01,1871-07-01
                       Consolidated Mines, De Beers, 1888-01-01,1888-01-01
                       DR Congo,Countries,1903-01-01,1907-01-01
                       Cullinan,De Beers, 1905-01-01,1905-01-01
                           GIA 4Cs,Other, 1939-01-01,1939-01-01
                       Canada,Countries,1991-01-01,1998-01-01
                       Millenium Star,De Beers,2000-01-01,2000-01-01
                       Kimberley Process,Other,2003-01-01,2003-01-01"
)

gg_vistime(firsts, linewidth = 5, optimize_y = F)

ggsave("./images/first_discoveries.png", width = 6, height = 5.5, units = "in")


