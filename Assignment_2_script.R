library(DiagrammeR)
library(ggplot2)



# Corundum physical properties (on save image adjust height to 475)

grViz("
digraph dot {

graph [layout = dot]

node [shape = oval,
      style = filled,
      color = blue,
      width = 1.9,
      height = 0.75]

node [fillcolor = lightCyan]
a[label = 'Crystal structure:\nTrigonal']
b[label = 'Composition:\nAluminium Oxide']
c[label = 'Lustre:\nVitreous']

d[label = 'Corundum']

e[label = 'Mohs: 9']
f[label = 'SG: 4.00']
g[label = 'RI: 1.76-1.77']
h[label = 'DR: 0.008']


edge [color = grey, arrowhead = none]
{a b c} -> d -> {e f g h}

}")




# Corundum types & colours (on save image adjust height to 475)

grViz("
digraph dot {

graph [layout = dot, overlap = false]

node [shape = oval,
      style = filled,
      color = grey,
      fontcolor = black,
      width = 1.9,
      height = 0.75]

node [shape = oval, fillcolor = none]
a[label = '\nCorundum\n ']
b[label = '1. Ruby\n(Red)', fillcolor = red, width = 2]
c[label = '2. Sapphire\n(Blue)', fillcolor = Blue, fontcolor = white, width = 2]
d[label = '3. Padparadscha\n(Pinkish-orange)', fillcolor = LightSalmon]

node [color = grey, fontcolor = black]

f[label = Clear, fillcolor = none]
g[label = Green, fillcolor = GreenYellow]
h[label = Pink, fillcolor = Pink]
i[label = Yellow, fillcolor = Yellow]

edge [color = grey]
a -> {b c d}
c -> {f g h i}


}")



# Table for countries where Corundum is found
library(tidyverse)
library(kableExtra)

c <- tribble(
  ~Country, ~Red, ~"Pinkish orange", ~Blue, ~Colourless, ~Green, ~Pink, ~Yellow,
  "Myanmar", "Finest", "", "Good", "", "", "Yes", "",
  "Thailand", "Brownish", "", "Dark", "", "Yes", "", "Greenish",
  "Afghanistan", "Bright", "", "", "", "", "", "",
  "Pakistan", "Bright", "", "Good", "", "", "", "",
  "Cambodia", "Bright", "", "Yes", "", "", "", "",
  "Vietnam", "Bright", "", "Yes", "", "", "", "",
  "India", "Yes", "", "Good", "", "", "", "",
  "Sri Lanka", "Yes", "Yes", "", "Truly, & Cloudy", "Yes", "Yes", "Purely",
  "Mozambique", "Yes", "", "Yes", "", "", "", "",
  "Tanzania", "Yes", "Yes", "Yes", "", "", "", "",
  "Malawi", "Yes", "Yes", "", "", "Teal", "Yes, & Bright", "",
  "Greenland", "Yes", "", "", "", "", "", "",
  "Russia", "Yes", "", "Yes", "", "", "", "",
  "Australia", "Yes", "", "Dark", "", "Teal", "", "Greenish",
  "Norway", "Yes", "", "", "", "", "", "",
  "Montana (US)", "Yes", "", "Metallic", "Truly", "Teal", "", "Purely",
  "Madagascar", "", "Yes", "Yes", "", "", "Yes", "",
  "Kashmir", "", "", "Cornflower", "", "", "", "",
  "Nigeria", "", "", "Dark", "", "", "", "",
  "Brazil", "", "", "Yes", "", "", "", "",
  "China", "", "", "Yes", "", "", "", "",
  "Kenya", "", "", "Yes", "", "", "", "",
  "Canada", "", "", "Yes", "", "", "", "",
  "Columbia", "", "", "Yes", "", "", "", "",
  "East Africa", "", "", "", "", "", "Yes", "Purely"
) |>  
  arrange(Country)


kbl(c,
    align = c("l", "c", "c", "c", "c", "c", "c", "c"),
    booktabs = TRUE,
    centering = TRUE,
    caption = "Worldwide locations of Corundum"
) |>
  kable_paper() |>
  add_header_above(c(" " = 1, "Ruby" = 1, "Padparadsha" = 1, "Sapphire" = 5), bold = TRUE) |>
  column_spec(1, bold = TRUE) |>
  footnote(c("Descriptions denote type of colour, for example, 'Bright' = Bright Red (Ruby).",
             "'Yes' denotes coloured gemstone also found in corresponding country, for example: Blue Sapphire can also be found in Brazil.",
             "Source: (ref:hall-citation).")) |>
  kable_styling(full_width = FALSE, 
                position = 'center',
                latex_options = "scale_down", 
                bootstrap_options = "striped")
  
