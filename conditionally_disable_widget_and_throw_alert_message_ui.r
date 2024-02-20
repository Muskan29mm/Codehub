library(shiny)
library(shinyjs)

shinyUI(
  fluidPage(
    h3("Demo - shinyjs alert(), delay(), hide(), enable() functions together"),
    h4("First the data will be read from UCI URL. while the data is being read, a text message is displayed"),
    h4("Also, the save button is disabled. Once the data is read, the text message shall go away and save button will enable. Data will be written"), 
    h4("to the working directory locally and once completed an alert message will show up saying file saved"),
 
    useShinyjs(),
    hr(),
    # Save button will be disabled on the page load
    tags$div(id="p1", h4("Reading the data from the web...."),style='color:brown;'),
    disabled(actionButton("save", "Save Dataset"))
    
     )
)