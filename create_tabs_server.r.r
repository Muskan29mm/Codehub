library(shiny)
shinyServer(function(input,output)
  {
  output$tabs = renderUI(
    {
      # tab-1, tab-2 ...... these are the tab titles
      # using lapply(), we will apply the tabpanel function on each tab title to get a list of tabpanel(s)
      
      #input$n tells how much tab set function we want to apply
      Tabs <- lapply(paste("tab no.", 1:input$n, sep=" "), tabPanel)
      
      #now we have the list of arguments and we can use the tabsetPanel function on the list of arguments 
      # do.call function allows you to call any R function, but instead of writing out the arguments one by one
      
      do.call(tabsetPanel, Tabs)
    }
  )
})

