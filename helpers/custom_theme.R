fn_custom_theme <- function(){
  my_theme <- bslib::bs_theme(
    version    = 4,
    bootswatch = "materia",
    fg         = "black",
    bg         = "white",
    primary    = "#2148a6",
    secondary  = "white",
    base_font  = font_google("Harmattan"),
    heading_font = font_google("Harmattan"),
    font_scale  = 1.25
  )
}

# Thematic theme for ggplot2 outputs
fn_thematic_theme <- function() {
  thematic::thematic_theme(
    bg = "#ffffff",
    fg = "#1d2d42",
    accent = "#2148a6",
    font = font_spec(font_google("BenchNine"), scale = 1.75)
  )
}