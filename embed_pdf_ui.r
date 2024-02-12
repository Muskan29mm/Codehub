library(shiny)

shinyUI(
  fluidPage(
    sidebarLayout(
      sidebarPanel(
        h5("use case - embed a pdf in the app - embed as a local pdf or form web URL")
        ),
      mainPanel(
        tabsetPanel(
          # using iframe along with tags() within tab to display pdf scroll
          tabPanel("Reference",
                   tags$iframe(style="height:400px; width:100%; scrolling=yes",
                               src="SRS.pdf")),
          tabPanel("Summary"),
          tabPanel("Plot")
        )
      )
    )
  )
)
#getwd()

#setwd("C:/Users/lenovo/Desktop/shiny/new/www")