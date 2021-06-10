library(shiny)
library(shinydashboard)
 
shinyUI(
  dashboardPage( 
    dashboardHeader( title ="Shiny Dashboard"),
    dashboardSidebar(
      sliderInput("bins","Number of Breaks",1,100,50),
      menuItem("DashBoard"),
      menuSubItem("Chart"),
      menuSubItem("TAbles"),
      menuItem("Analysed Data"),
      menuItem("Analysed Result")
      
    ),
    dashboardBody(
      fluidRow(
        box(plotOutput("histogram")),
        
      )
    )
  )
)