shinyUI(pageWithSidebar(
  
  headerPanel("Testing Sankey"), 
  
  sidebarPanel(
    h4("Empty")
  ),
  
  mainPanel(
    tableOutput("table"),
    showOutput("sankey", "sankey")
  )
))
