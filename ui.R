ui <- navbarPage(
  tags$body(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),

  title = fn_navbar(),
  theme = fn_custom_theme(),
  windowTitle = "Bhabishya's Streamline Demo App",
  ui_Overview("main"),
  ui_Details("main")
  )
