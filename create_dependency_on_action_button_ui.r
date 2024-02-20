library(shiny)  # for shiny components

library(dplyr) # for piping and data manipulation

# for demo using the mtcars dataset
# convert the cylinder variable to factor type

my = mtcars %>%
  mutate(cyl = as.factor(cyl))

#ui component start
shinyUI(
  fluidPage(
  h3("Demo on eventReactive() function"),
  h4("Use case -Subset dataset basis user selection and display subset data"),
  hr(),
  #sliderInput
  sliderInput(inputId = "miles",
              label = "Select miles per gallon range",
              dragRange = TRUE,
              min = min(my$mpg),
              max = max(my$mpg),
              value = c(15, 25)
  ),
  #radioButtons
  radioButtons(inputId = "cyl",
               label = "Select the cylinder",
               choices = levels((my$cyl)),
               selected = 4,
               inline = TRUE
               ),
  #actionButtons
  actionButton(inputId = "show",
               label = "Show Data"),
  
  # data Table
  tableOutput("table")
)
)


#getwd()
#setwd("C:/Users/lenovo/Desktop/shiny/new")