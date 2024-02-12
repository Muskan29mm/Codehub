library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title = "Demonstration of Submit Button"),
    sidebarLayout(
      sidebarPanel(
        selectInput("dataset","Choose a dataset:",
                    choices = c("iris","pressure","mtcars")),
        #numeric input for the selection of the number of observation that user wants to view
        numericInput("obs","Number of observations:",6),
        #submit button to create dependency of the reactivity on the event of pressing of the submit button
        submitButton("Update"),
        p("In this example, changing the user input will not refresh the output until update button is clicked"),
        p("SubmitButton is used to control the reactivity of the change in the user input")
      ),
      mainPanel(
        #just a header for the heading
        h4(textOutput("dataname")),
        # display the structure of the selected dataset is dependent of the submit button
        verbatimTextOutput("structure"),
        #just a header for the heading
        h4(textOutput("observation")),
        #display the observations ofthe selected dataset is dependent of the submit button
        tableOutput("view")
      )
    )
  )
)