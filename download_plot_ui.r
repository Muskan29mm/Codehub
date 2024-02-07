library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title= h4("Download base plot in shiny - an example", align="center")),
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = "var1", label = "Select the x variable", choices = c("Sepal.length" = 1, "Sepal.width" = 2, "Petal.Length" = 3, "Petal.width" = 4)),
        selectInput(inputId = "var2", label = "Select the Y variable", choices = c("Sepal.length" = 1, "Sepal.width" = 2, "Petal.Length" = 3, "Petal.width" = 4)),
      #  radioButtons(inputId = "var3", label = "Select the color", choices = c("Green","Purple","Blue","Red"),selected = "Green"),
        radioButtons(inputId = "var4", label = "Select the file type", choices = list("png","pdf"))
      ),
      mainPanel(
        plotOutput("plot"),
        #plotOutput("color"),
        downloadButton(outputId = "down", label = "Download the plot")
      )
    )
  )
)