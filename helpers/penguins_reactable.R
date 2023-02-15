source("helpers/crosstalk_prep.R")

penguins_interactive_tbl <-
  htmltools::browsable(tagList(
    tags$br(),
    br(),
    reactable(
      crosstalk_data,
      compact = TRUE,
      
      theme = fivethirtyeight(
        font_size = 12,
        header_font_size = 12,
        centered = TRUE
      ),
      
      columns = list(
        species = colDef(
          name = "species",
          style = list(borderRight = "1px solid #777")
        ),
        
        island = colDef(name = "island",
                        align = "center"),
        
        bill_length_mm = colDef(name = "Bill Length (mm)",
                                align = "center"),
        
        bill_depth_mm = colDef(name = "Bill Depth (mm)",
                               align = "center"),
        
        flipper_length_mm = colDef(name  = "Flipper Length (mm)",
                                   align = "center"),
        
        body_mass_g = colDef(name = "Body Mass (GM)",
                             align = "center"),
        
        sex = colDef(name = "sex",
                     align = "center"),
        
        year = colDef(name = "year",
                      align = "center")
        
      )
      
    )
  ))









