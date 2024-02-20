library(shiny)

shinyUI(
  navbarPage(title = "Demo shiny Navbar Layout",
             tabPanel("About Page",
                      h4("This app uses navbar for layout & mtcars dataset"),
             ),
             tabPanel("Data Page", tableOutput("data")),
             
             tabPanel("Widgets & Sidebar",
                      sidebarLayout(
                        sidebarPanel(
                          sliderInput("b", "Select the no. of BINs", min = 5, max = 20, value = 6)
                        ),
                        mainPanel(
                          plotOutput("plot")
                        )
                      )
                      ),
             navbarMenu("Menu Options",
                        tabPanel("Menu item A - Summary Stats", verbatimTextOutput("summary")),
                        tabPanel("menu item B - Link to code",
                                 h4(HTML(paste("Thanks for watching the video. Reference code available at the following", a(href="www.google.com", "link"), " ."))),
                                 h4(HTML(paste("In case you have questions", a(href="mailto:aagg@gmail.com", "link")," .")))
                                 )  # used to create submenu in tab panel
             )
   )
)