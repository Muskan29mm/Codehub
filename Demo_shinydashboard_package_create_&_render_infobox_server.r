library(shiny)
library(shinydashboard)

s = sample(100:500, 50)

shinyServer(function(input, output, session) {
  # First fluid Row and first infobox
  output$min_ <- renderInfoBox({
    infoBox(title = "Min",
            value = min(s),
            subtitle = "Minimum value in dataset",
            fill = TRUE)
  })
  
  # First Fluid row and second infobox
  output$max_ <- renderInfoBox({
    infoBox(title = "Max",
            value = max(s),
            subtitle = "Maximum value in dataset", 
            fill = TRUE, color = "yellow")
  })
  
  # First Fluid Row and Third infobox
  output$sd_ <- renderInfoBox({
    infoBox(title = "SD",
            value = sd(s),
            subtitle = "Standard Deviation", 
            icon = icon("arrow-up"))
  })
  
  # First Fluid Row and Fourth infobox
  output$mean_ <- renderInfoBox({
    infoBox(title = "Mean",
            value = mean(s),
            subtitle = "Mean of dataset values",
            icon = icon("angle-double-right"))
  })
  
  # Second Fluid Row and infobox
  output$median_ <- renderInfoBox({
    infoBox(title = "Median",
            value = median(s),
            subtitle = "Median of dataset values",
            icon = icon("angle-double-right"))
  })
})
