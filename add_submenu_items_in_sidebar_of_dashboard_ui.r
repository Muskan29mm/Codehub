library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - add sub menu items to a sidebar - an example", titleWidth = 100),
    dashboardSidebar(
      sidebarMenu(id = 'sidebarmenu',
                  menuItem("Dashboard", tabName = "Dashboard", icon = icon("dashboard")),
                  
                  menuItem('chart',
                           icon = icon('line-chart'),
                           menuSubItem('chartmenusub1',
                                       tabName = 'chart1',
                                       icon = icon('line-chart')),
                           menuSubItem('chartmenusub2',
                                       tabName = 'chart2',
                                       icon = icon('line-chart')
                          )))),
      dashboardBody(
       
    )
  )
)
