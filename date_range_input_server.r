library(shiny)

shinyServer(function(input, output, session) 
  {
  # Make mydf a reactive value
  mydf_reactive <- reactive({
    mydf
  })
  
  #returns the start date selected by the user
  output$startdate <- renderText({
    as.character(input$daterange[1])  #start date selected by user
  })
  
  #returns the end date selected by the use
  output$enddate <- renderText({
    as.character(input$daterange[2])  #end date selected by user
  })
  
  #returns the text showing the data range selected by the user
  output$range <- renderText({
    paste("Selected date range is ", input$daterange[1], "to", input$daterange[2])
  })
  
  #returns the status information based on selected date
  output$subdata <- renderTable({
    mydata <- mydf_reactive()
    s <- subset(mydata, mydata$Date >= input$daterange[1] & mydata$Date <= input$daterange[2])
    table(s$status)
  })
})
