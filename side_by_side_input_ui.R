library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "var1", label = "Variable A", min = 0, max = 100, step = 10, value = 20),
  sliderInput(inputId = "var2", label = "Variable B", min = 100, max = 500, step = 100, value = 200),
  selectInput(inputId = "var3", label = "Variable C", choices = names(mtcars)),
  hr(),
  
  div(style = "display:inline-block; vertical-align: top; padding-left: 30px; width:250px;",sliderInput(inputId = "var4", label = "Variable D", min = 0, max = 100, step = 10, value = 20)),
  div(style = "display:inline-block; vertical-align: top; padding-left: 30px; width:250px;",sliderInput(inputId = "var5", label = "Variable E", min = 100, max = 500, step = 100, value = 200)),
  div(style = "display:inline-block; vertical-align: top; padding-left: 30px; width:250px; padding-top: 5px;",selectInput(inputId = "var6", label = "Variable F", choices = names(mtcars))),
  div(style = "display:inline-block; vertical-align: top; padding-left: 30px; width:250px; padding-top: 5px;",textInput("txt", "Enter Text")),
  div(style = "display:inline-block; vertical-align: center; padding-left: 2px; padding-top: 30px;",actionButton(inputId = "button", "Go!"))
)
