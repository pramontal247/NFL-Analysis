# NFL Probability App


nfl_19 <- read.csv("pbp-2019.csv")

yard20 <- subset(nfl_19, nfl_19$YardLine <21)
yard40 <- subset(nfl_19, nfl_19$YardLine >20 & nfl_19$YardLine <41)
yard60 <- subset(nfl_19, nfl_19$YardLine >40 & nfl_19$YardLine <61)
yard80 <- subset(nfl_19, nfl_19$YardLine >60 & nfl_19$YardLine <81)
yard100 <- subset(nfl_19, nfl_19$YardLine >80)


library(shiny)
library(shinythemes)
library(tidyverse)

ui <- fluidPage(theme = shinytheme("superhero"),
                
                navbarPage("NFL Poisson Probability"), #NavBar        
                
                titlePanel("NFL Yards Gained Poisson Distribution Probability"), #TitlePanel
                
                sidebarPanel(
                    # tag("Selection:"), #fix
                    
                    selectInput("Formation", "Select Formation", choices = c( "Under Center", "Shot Gun", "No Huddle Shot Gun",
                                                                              "No Huddle")),
                    
                    selectInput("PlayType", "Select Play Type", choices = c("Run", "Pass")),
                    
                    
                    sliderInput("Down:", label = "Down",
                                min = 1, max = 4, value = 4),
                    
                    
                    sliderInput("ToGo:", label = "Yards to Go",
                                min = 1, max = 20, value = 100),
                    
                    sliderInput("YardLine:", label = "Yard Line",
                                min = 1, max = 100, value = 100 ),
                    
                    
                    sliderInput("Lamda:", label = "Lambda Value",
                                min = 1, max = 20, value = 1)),#SliderInput
    
              
                
                mainPanel( 
                    "Yards Gain", plotOutput('probplot'),

                    
                )#mainPanel
                
                
                
                
                
)#FluidPage 



# Define server logic required to draw a histogram
server <- function(input, output) {
    output$probplot <- renderPlot({
        input$Formation
        input$PlayType
        input$Down
        input$ToGo
        input$YardLine
        input$Lambda
    probs1  <- ppois(x, lambda = 20 )

        # draw the histogram with the specified number of bins
        qplot(x, probs1, geom = c("point", "line"), col = 'darkgray', border = 'white')
    })
}


# Run the application 
shinyApp(ui = ui, server = server)
