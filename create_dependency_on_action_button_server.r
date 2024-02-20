library(shiny)

shinyServer(function(input, output, session)
  {
    filter <- eventReactive(eventExpr = input$show,
                            valueExpr = {
                              dplyr::filter(my,
                                            cyl==input$cyl,
                                            mpg>=input$miles[1] & mpg<=input$miles[2])
                            },
                            ignoreNULL = FALSE
                            )  # to show the data when app runs with the predefined values
    #display the filtered table
    output$table <- renderTable(
      {
        filter()
      }
    )
  }
)