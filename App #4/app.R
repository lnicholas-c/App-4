library(shiny)

ui <- fluidPage(
  
  titlePanel(""),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons("year", "Choose a year to be displayed", 
                   choices = c("2011", "2012", "2013", "2014", "2015")),
      
      selectInput( "state", 
                   "Choose the state to be displayed:",
                   choices = sts ),
      
      selectInput( "topic", "Choose the topic to be displayed",
                   choices = tpc )),
    
    mainPanel(
      plotOutput("nutritionPlot")
    )
  )
)

server <- function( input, output ) {
  
data <- reactive ({  
           switch(input$year,
                  )
  
  })
  
}

shinyApp( ui = ui, server = server )
