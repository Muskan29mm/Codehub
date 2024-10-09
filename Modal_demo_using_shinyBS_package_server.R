library(shiny)
library(shinydashboard)
library(ggplot2)

server <- function(input, output) {
  
  
  observeEvent(input$file,
               shinyjs::show("data_b"))
  
  
  observeEvent(input$file,
               shinyjs::show("plot_b"))
  
  
  
 
  data_uploaded <- reactive({
    file1 <- input$file
    if(is.null(file1)){return()} 
    read.table(file=file1$datapath, sep=",", header = T, stringsAsFactors = T)
    
  })
  

  output$data_set <- renderDataTable(
    data_uploaded(),options=list(scrollX = TRUE))
  

  output$plot_gg <- renderPlot(
   
    ggplot(data=data_uploaded()) + 
      geom_histogram(binwidth=input$b, aes(x=price)) + 
      ggtitle("Diamond Price Distribution") + 
      xlab(paste("Diamond Price & binwidth as ", input$b)) + 
      ylab("Frequency") + 
      theme_minimal() + xlim(0,2500)
  )
  
}
