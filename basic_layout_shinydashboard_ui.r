library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - This is header", titleWidth = 500),
    # Add a title using the title argument
    # change the width of title using the titlewidth argument
    # header can be diabled using the argument disable = TRUE
    
    dashboardSidebar("This is sidebar and can have sidebar menu items"),
    # sidebar can be hidden by using the argument collapse=TRUE
    
    dashboardBody("This is body. Introducing shinydashboard package and demo of basic layout")
  )
)