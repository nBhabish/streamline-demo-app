ui_Details <- function(id) {
  ns <- NS(id)
  tabPanel(title = "Details", 
           div(fluidRow(
             column(width = 3,
                    br(), 
                    wellPanel(
                      style = "background-color: #2148a6; color: #ffffff",
                      p("About Streamline"),
                      p(
                        "Streamline is a leader in helping practices better manage no shows. 
                        Through talking with hundreds of front office staff, practice managers, doctors,
                        and executives, Streamline has developed no show best practices and data tools, 
                        including a predictive platform that identifies patients most likely to no show, 
                        to help practices reduce no show rates, increase visits, and expand access to patient care."
                      )
                    )),
             column(
               width = 8,
               
               bscols(
                 widths = c(3, 3, 3, 3),
                 species_filter,
                 island_filter,
                 year_filter,
                 body_mass_filter
               ),
               
               penguins_interactive_tbl
               
             )
           )))
}

server_Details <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      
    }
  )
}