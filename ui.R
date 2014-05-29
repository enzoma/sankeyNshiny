require(shiny)
require(rCharts)

# addResourcePath("assets",".")

#options(RCHART_LIB = 'd3')

shinyUI(bootstrapPage(
  tagList(
    singleton(
      tags$head(
        tags$script(src='./js/d3.v3.js', type = 'text/javascript', charset = 'utf-8'),
        tags$script(src='./js/sankey.js', type = 'text/javascript', charset = 'utf-8'),
        tags$script(src='./js/dimple.v1.1.5.js', type = 'text/javascript', charset = 'utf-8'),
        tags$link(rel = 'stylesheet', type = 'text/css', href = './css/sankey.css')
      )
    )
  ),
  div(
    class="container-fluid",
    div(class="row-fluid",
       headerPanel("Header Panel") 
    ),
    div(class="row-fluid",
        sidebarPanel(
          h4("Empty")
        ),
        mainPanel(
          #tableOutput("table") ,
          chartOutput("sankey", "/Users/e/Google Drive/GitLib/sankeyNshiny/js") #,
#           chartOutput("dimple", "/Users/e/Google Drive/GitLib/sankeyNshiny/js")
        )
    )
  )
))
# library(devtools)
# install_github("rCharts","ramnathv",ref="dev")
