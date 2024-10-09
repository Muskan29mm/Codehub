library(shiny)
library(shinydashboard)

# Define UI
dashboardPage(
  dashboardHeader(title = "Demo Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Plot", tabName = "plot", icon = icon("chart-line"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "plot",
              fluidRow(
                box(title = "Scatter Plot", status = "primary", solidHeader = TRUE,
                    plotOutput("graph", brush = "plot_brush")),
                box(title = "Complete Data", status = "primary", solidHeader = TRUE,
                    tableOutput("data")),
                box(title = "Brushed Data", status = "primary", solidHeader = TRUE,
                    conditionalPanel(
                      condition = "output.brushedDataAvailable",
                      tableOutput("data_brush"),
                      helpText("These are the points you selected.")
                    ),
                    conditionalPanel(
                      condition = "!output.brushedDataAvailable",
                      "No points selected."
                    )
                )
              )
      )
    )
  )
)
