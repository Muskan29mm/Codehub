library(shiny)
library(ggplot2)

server <- function(input, output, session) {
  # Placeholder for server logic
  observeEvent(input$button, {
    # Example action when the button is pressed
    showModal(modalDialog(
      title = "Input Values",
      paste("Variable A:", input$var1,
            "\nVariable B:", input$var2,
            "\nVariable C:", input$var3,
            "\nVariable D:", input$var4,
            "\nVariable E:", input$var5,
            "\nVariable F:", input$var6,
            "\nText:", input$txt)
    ))
  })
}
