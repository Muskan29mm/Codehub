
library(shiny) 
library(shinydashboard) 
library(shinyBS)
library(shinyjs) 
library(DT) 
library(ggplot2)
library(shinycssloaders) 



ui <- dashboardPage(
  dashboardHeader(title = "Diamonds Explorer - Modal demo using shinyBS package" , titleWidth = 600),
  
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Data", tabName = "tab1", icon = icon("th"))
    )
  ),
  

  dashboardBody(
    
    shinyjs::useShinyjs(),
   
    tabItems(
      tabItem(
        tabName = "tab1", 
        
        
        box(
          width = 5,
          title = "Input Data", status = "primary", solidHeader = TRUE, 
          fileInput("file", "Upload Data"),
          
         
          shinyjs::hidden(
            div(id = "data_b",style="display:inline-block",
                actionButton("data",  "View Data", icon=icon('table'))
            )),
          
         
          shinyjs::hidden(
            div(id = "plot_b", style="display:inline-block",
                actionButton("plot",  "View Plot", icon=icon("bar-chart"))
            ))
          
        ))),
    

    bsModal(id="dataset", title = "Diamonds Dataset", trigger = "data", size="large",
            withSpinner(dataTableOutput("data_set"))),
    

    bsModal(id= "Plot", title = "Plot", trigger = "plot", size="large",
            sliderInput(inputId = "b", label = "Select the bin width value" , min = 50  , max = 500, value = 100),
            br(),
            withSpinner(plotOutput("plot_gg"))
            
            
    )))


