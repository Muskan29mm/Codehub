library(shiny)
library(shinydashboard)

s = sample(100:500, 50)

shinyServer(function(input, output, session){
  
  output$min_ <- renderValueBox({
    valueBox(
      value = min(s),
      subtitle = "minimum value in dataset")
    
  })
  
  output$max_ <- renderValueBox({
    valueBox(
      value = max(s),
      subtitle = "maximum value in dataset")
  })
  
  output$sd_ <- renderValueBox({
    valueBox(
      value = sd(s),
      subtitle = "standard Deviation", icon("arrow-up"),
      color = "yellow")
  })
  
  output$mean_ <-renderValueBox({
    valueBox(
      value = mean(s),
      subtitle = "Mean of dataset values",
      icon=icon("angle-double-right"),
      color = "purple")
  })
})
  