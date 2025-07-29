library(shiny)
library(plotly)
library(MASS)

ui <- fluidPage(
  div(
    style = "font-size: 26px; font-weight: bold; padding-bottom: 4px;",
    "Adjustable Correlation"
  ),
  div(
    style = "font-size: 16px; font-weight: normal; color: #555; padding-bottom: 10px;",
    "Use the slider to adjust correlation between X and Y"
  ),
  sliderInput("cor", "Correlation:", min = -1, max = 1, value = 0, step = 0.01),
  plotlyOutput("scatterPlot", height = "500px"),
  textOutput("corText")
)

server <- function(input, output) {
  output$scatterPlot <- renderPlotly({
    mu <- c(0, 0)
    Sigma <- matrix(c(1, input$cor, input$cor, 1), 2)
    data <- as.data.frame(mvrnorm(n = 200, mu = mu, Sigma = Sigma))
    colnames(data) <- c("X", "Y")
    
    plot_ly(
      data, x = ~X, y = ~Y,
      type = "scatter", mode = "markers",
      marker = list(size = 6, color = "blue", opacity = 0.6)
    ) %>%
      layout(
        title = paste("Correlation =", round(input$cor, 2)),
        xaxis = list(title = "X", zeroline = TRUE),
        yaxis = list(title = "Y", zeroline = TRUE),
        showlegend = FALSE
      )
  })
  
  output$corText <- renderText({
    paste("Current correlation:", round(input$cor, 2))
  })
}

shinyApp(ui = ui, server = server)
