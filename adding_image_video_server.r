library(shiny)

 #to increase the file input limit
#options(shiny.maxRequestSize = 9*1024^2)

shinyServer(function(input,output)
{
  data <- reactive(
    {
      file1 <- input$file
      if(is.null(file1))
      {
        return()
      }
      read.table(file=file1$datapath, sep=input$sep, header = input$header, stringsAsFactors = input$stringAsFactors)  # file, sep, header, stringAsFactors are all inputId in ui
    }
  )
  
  #this reactive output contains the summary of the dataset and display the summary in the table format
  output$filedf <- renderTable({
    if(is.null(data()))
    {
      return ()
    }
    input$file   # file is the input variable in ui 
  })
  
  #this reactive output contains the summary of the dataset and display the summary in the table format
  output$sum <- renderTable(
    {
      if(is.null(data()))   #data is the output we get from reactive function define above
      {
        return ()
      }
      summary(data())
    }
  )
  # this reactive output contains the dataset and display the dataset in table format
  output$table <- renderTable
  (
    {
      if(is.null(data()))
      {
        return ()
      }
      data()   #this will return entire data in table format
    }
  )
  
  # the following renderUI is used to dynamically generate the tabsets when the file is loaded,
  output$tb <- renderUI(
    {
      if(is.null(data()))
        # to include image
        return()
       # to include video
        #h5("intro video", br(), tags$video(src='R Tutorial_ Introduction to R', type="video/mp4", height="350px", width="200px", controls="controls"))
      else
        tabsetPanel(tabPanel("About file", tableOutput("filedf")),tabPanel("Data", tableOutput("table")),tabPanel("Summary", tableOutput("sum")))
    }
  )
})