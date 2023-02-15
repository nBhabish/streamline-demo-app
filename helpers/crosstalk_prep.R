penguins <- palmerpenguins::penguins %>% 
  drop_na() %>% 
  mutate(sex = as.character(sex))

crosstalk_data <- SharedData$new(penguins)

species_filter <- filter_select(
  id = "species", 
  label = "Species",
  group = ~ species,
  sharedData = crosstalk_data
)

island_filter <- filter_select(
  id = "island", 
  label = "Island",
  group = ~ island,
  sharedData = crosstalk_data
)

year_filter <- filter_select(
  id = "year", 
  label = "Year", 
  group = ~ year, 
  sharedData = crosstalk_data
)

body_mass_filter <- filter_slider(
  id = "body_mass_g",
  label = "Body Mass",
  column = ~ body_mass_g,
  sharedData = crosstalk_data
)