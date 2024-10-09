library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)
library(ggplot2)

ui <- shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shiny dashboard package - create a tab box", titleWidth = 700),
    dashboardSidebar(
      sidebarMenu(
        menuItem("tabBox", tabName = "Charts", icon=icon("check"))
      )
    ),
    dashboardBody(
      # within tabitems(), define the pages for sidebar menu items
      tabItems(
        tabItem(tabName = "charts",
                fluidRow(
                  tabBox(
                    id = "tabchart1",
                    tabPanel("Tab1", plotlyOutput("plot1")),
                    tabPanel("Tab2", plotlyOutput("plot2")),
                    tabPanel("Tab3", plotlyOutput("plot3"))
                  ),
                  tabBox(
                    id = "tabchart2", side = "right",  # it has navigation from right
                    tabPanel("Tab1", "Tab 1 content"),
                    tabPanel("Tab2", "Tab 2 content"),
                    tabPanel("Tab3", "Tab 3 content")
                  )
                )
        )
      )
    )
  )
)
