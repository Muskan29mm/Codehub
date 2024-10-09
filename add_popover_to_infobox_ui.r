library(shiny)
library(shinydashboard)
library(shinyBS)

# Define UI
ui <- dashboardPage(
  dashboardHeader(title = "Demo - add popover to infobox", titleWidth = 400),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))
    )
  ),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom3.css")
    ),
    # Create popover for the mean info box
    bsPopover(id = "q1", title = "Mean",
              content = "Mean price of diamonds",
              placement = "right",
              trigger = "hover",
              options = list(container = "body")),
    bsPopover(id = "q2", title = "Median",
              content = "Median price of diamonds",
              placement = 'right',
              trigger = "hover",
              options = list(container = "body")
              ),
    
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                infoBoxOutput("info1"),
                infoBoxOutput("info2")
              )
      )
    )
  )
)
