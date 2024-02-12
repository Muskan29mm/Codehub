library(shiny)

shinyServer <- function(input, output, session)
{
  output$filedf <- renderTable(
    {
      if(is.null(input$file))
      {
        return ()
      }
      input$file
    }
  )
  
  #unzipping files on click of button  and then rendering the result to dataframe
  observeEvent(input$unzip,
               output$zipped <- renderTable(
                 {
                   unzip(input$file$datapath) #path to extract files can be defined using exdir argument
                 }
               ))
}