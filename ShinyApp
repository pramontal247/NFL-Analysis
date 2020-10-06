# NFL Probability App


nfl_19 <- read.csv("pbp-2019.csv")


library(shiny)
library(shinythemes)
library(tidyverse)

ui <- fluidPage(theme = shinytheme("superhero"),
      
                navbarPage("NFL Poisson Probability"), #NavBar        
                
    titlePanel("NFL Yards Gained Poisson Distribution Probability"), #TitlePanel
    
     sidebarPanel(
       # tag("Selection:"), #fix
        sliderInput("Down:", label = "Down",
                    min = 1, max = 4, value = 4),
        
        
        sliderInput("Yards to Go:", label = "Yards to Go",
                    min = 1, max = 20, value = 100),
        
        sliderInput("YardLine:", label = "Yard Line",
                    min = 1, max = 100, value = 100),
    
        
        sliderInput("Lamda:", label = "Lambda Value",
                    min = 1, max = 20, value = 100),
        
        
     ),#SliderInput
        
        selectInput("Formation", "Select Formation", choices = c( "Under Center", "Shot Gun", "No Huddle Shot Gun",
        "No Huddle")),
    
    selectInput("Defensive Rating", "Select Defensive Rating", choices = 1:32),
        
        mainPanel(
        
            
        )#mainPanel
        
        
   
 

    )#FluidPage


# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
