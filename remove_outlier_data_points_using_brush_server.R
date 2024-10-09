library(shiny)
library(shinydashboard)
library(ggplot2)

server <- function(input, output, session){
  
  # using the mtcars dataset
  mtcars1 = mtcars
  mtcars1$cyl = as.factor(mtcars1$cyl)
  mt <- reactiveValues(data=mtcars1)
  
  # Create boxplot object plotOutput function is expecting
  output$boxplot <- renderPlot({
    ggplot(mt$data, aes(cyl, mpg)) + geom_boxplot(outlier.color = "red") + coord_flip()
  })
  
  # Returns the actual dataset
  output$data1 <- renderTable({
    mtcars1
  })
  
  # Returns the updated state of the dataset
  output$data2 <- renderTable({
    mt$data
  })
  
  # Observe function
  # listening to brushing event
  
  observe({
    df = brushedPoints(mt$data, brush = input$plot_brush_, allRows = TRUE)
    mt$data = df[df$selected_ == FALSE, ]
  })
}