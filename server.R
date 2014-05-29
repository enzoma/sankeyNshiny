require(shiny)
require(rCharts)

shinyServer(function(input, output){
#   data <- reactive({
#     data <- data.frame(source=c("A","A","A","B","G","H","H","L"),
#                target=c("B","L","G","E","M","L","B","M"),
#                value=c("1","0.3","0.2","0.3","0.2","0.7","0.2","0.25"))
#     return(data)
#   })
  data <- data.frame(source=c("A","A","A","B","G","H","H","L"),
                     target=c("B","L","G","E","M","L","B","M"),
                     value=c("1","0.3","0.2","0.3","0.2","0.7","0.2","0.25"))
  output$table <- renderTable({
  #  return(data())
    data
  })
  
  output$sankey <-  renderChart2({  
    sankeyPlot <- rCharts$new()
    sankeyPlot$setLib(paste0(getwd(),"/js/"))
   #  sankeyPlot$setTemplate(afterScript = "<script></script>" )
    sankeyPlot$set(
      data = data,
      nodeWidth = 15,
      nodePadding = 10,
      layout = 32,
      width = 960,
      height = 500,
      units = "TWh",
      title = "Sankey Diagram"
    )
    sankeyPlot
  })
  
#   output$dimple <- renderChart2({
#     d1 <- dPlot(
#       value~source,
#       data=data(),
#       type = "bar"
#     )
#     return(d1)
#   })
})