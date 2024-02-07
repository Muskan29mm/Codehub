library(shiny)

shinyServer(function(input, output)
  ({
    x <- reactive(
      {
        iris[,as.numeric(input$var1)]
      }
    )
    
    y <- reactive(
      {
        iris[,as.numeric(input$var2)]
      }
    )
    output$plot <- renderPlot(
      {
        plot(x(),y())
      }
    )
    #output$color <- renderText(
     # {
      #  output$var3()
      #}
    #)

    #input$var3 <-renderPrint(input$var3)

    output$down <- downloadHandler(
      # specify the file name
      filename = function()
      {
        #iris.png
        #iris.pdf
        paste("iris",input$var4,sep = ".")
      },
      content = function(file)
      {
        #open the device
        # create the plot
        # close the device
        #png()
        #pdf()
        
        if(input$var4 == "png")
          png(file)
        else
          pdf(file)
        plot(x(),y())
        dev.off()  #this command is to close the device
      }
    )
}))