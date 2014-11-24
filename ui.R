shinyUI(fluidPage(
  titlePanel (" censusVis"),
  sidebarLayout(
    
    sidebarPanel(
      helpText("create demographic map with 2010 census data:"),
      selectInput("var", 
                  label = "Choose a variable to display", 
                  choices = list("Percent White", "Percent Black", "Percent Hispanic","Percent Asian"),
                  selected = "percent White"),
      
      br(),
      sliderInput("range", 
                  label = "Range of Interest", 
                  min = 0, 
                  max =100, 
                  value = c(0,100))
      ),
    
    mainPanel(plotOutput("map"))
    
    )
  ))