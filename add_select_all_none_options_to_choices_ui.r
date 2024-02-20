library(shiny)

mychoices = names(mtcars)

shinyUI(
  fluidPage(
    h5("Demo Example = 'Select All/None' option for choices using updateCheckboxGroupInput()"),
    hr(),
    
    #for selectAll/None toggle checkbox
    checkboxInput('all', 'Select All/None', value = TRUE),
    
    # for the variables name from mtcars dataset
    checkboxGroupInput('mtcars', 'mtcars column variables', choices = names(mtcars))
  )
)