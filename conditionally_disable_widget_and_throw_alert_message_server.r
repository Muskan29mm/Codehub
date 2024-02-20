library(shiny)
library(shinyjs)
library(data.table) # to use the fread function for faster data read from URL

shinyServer(function(input, output, session)
  {
  # reading the data from a given UCI URL
  URL = "https://archive.ics.uci.edu/dataset/53/iris"
  mydata = fread(URL, sep = ",", showProgress = FALSE) # reading the data from URL
  
  ## hide the text message and enable the save button only when data is read from URL
  if(is.null(mydata))
  {
    return()
  }
  else
  {
    hide("p1");
    enable("save")
  }
  
  #on click on the save button, read the dataset from uci URL and write to the following directory
  observeEvent(
    input$save,
    {
      starttime = Sys.time()
      write.csv(mydata, "data.csv", row.names = FALSE) 
      endtime = Sys.time()
      timelapse = endtime - starttime #calculating time taken in writing the file
      ms = timelapse *1000 # converting to milliseconds
      delay(ms, alert("File saved, thanks for using the app"))
    }
  )
})