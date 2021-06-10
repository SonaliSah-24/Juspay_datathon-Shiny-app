library(shiny)
library(shinydashboard)

shinyServer(function(input,output)
  {
  output$histogram <- renderPlot({
    hist(Transactions_datasheet, breaks = input$bins)
  })
})