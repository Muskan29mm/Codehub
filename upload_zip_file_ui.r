library(shiny)

ui <- fluidPage(
  #upload zip files
  fileInput("file", "Upload Zip File", accept = ".zip"),
  #action button to unzip the file
  actionButton("unzip"," Unzip Files"),
  
  #to display the metadata of the zipped file
  tableOutput("filedf"),
  
  #to display the list of unzipped files
  tableOutput("zipped")
)

