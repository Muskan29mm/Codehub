library(shiny)

#creates sample data frame with dates
set.seed(121)
mydate = seq(Sys.Date(), by = "day", length.out = 30)
mystatus = sample(c("Completed", "Cancelled"),30, replace = TRUE)
mydf = data.frame(Date = mydate, Status=mystatus)
str(mydf)
head(mydf)
summary(mydf)

shinyUI(
  fluidPage(
    h2("R shiny Demo - dateRangeInput"),
    hr(),
    dateRangeInput(
      inputId = "daterange",
      label = "Select the date range",
      start = min(mydf$Date),
      end = max(mydf$Date),
      min = min(mydf$Date),
      max = max(mydf$Date),
      format = "yyyy/mm/dd",
      separator = "-"
    ),
    textOutput("startdate"),
    textOutput("enddate"),
    textOutput("range"),
    tableOutput("subdata")
    
  )
)