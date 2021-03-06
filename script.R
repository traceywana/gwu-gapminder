library(tidyverse)

download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")

gapminder <- read_csv("data/gapminder.csv")

##Challnge
#calculate life exp by continent

ave_life_exp <- gapminder %>% 
  group_by(continent) %>% 
  summarize(
    avglifeexp = mean(lifeExp)
  )

#2 lefe exp by year for Canada


life_exp_canada <- gapminder %>% 
  filter(country=="Canada") %>% 
  select(year, lifeExp)

#get the mean gdp per condinent for 1972

mean_gdp_1972 <- gapminder %>% 
  group_by(continent) %>% 
  filter(year==1972) %>% 
  summarize(
    avegdp = mean(gdpPercap)
  )

#get pop size for China
pop_size_china <- gapminder %>% 
  filter(country == "China") %>% 
  select(year, pop)

#get max popsize per country for year2007
pop_size_2007 <- gapminder %>% 
  filter(year == 2007) %>% 
  group_by(country) %>% 
  summarize(max_pop = max(pop))

