library(shiny)
library(plotly)

server <- function(input, output, session) {
  output$myplot <- renderPlotly({
    plot_ly(data = pressure, x = ~temperature, y = ~pressure, type = "scatter", 
            mode = "lines+markers") %>%
      layout(title = "Pressure vs Temperature") %>%
      config(displayModeBar = FALSE)  # Disable the toolbar
  })
}
