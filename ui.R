addResourcePath("assets",".")

shinyUI(bootstrapPage(
  tagList(
    singleton(
      tags$head(
        tags$script(src='assets/js/d3.v3.js', type = 'text/javascript', charset = 'utf-8'),
        tags$script(src='assets/js/sankey.js', type = 'text/javascript', charset = 'utf-8'),
        tags$script(src='assets/js/dimple.v1.1.5.js', type = 'text/javascript', charset = 'utf-8'),
        tags$link(rel = 'stylesheet', type = 'text/css', href = 'assets/css/sankey.css')
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
          tableOutput("table"),
          showOutput("sankey", add_lib=F),
          showOutput("dimple", add_lib=F)
        )
    )
  )
))
