library(shiny)
server <- function(input, output) {
    output$hist <- renderPlot({
        x <- rnorm(input$re.n,input$re.mu,input$re.sigma)
        hist(x, main="Histogram of Reactive Parameters",
             xlab="Distribution of Sample Means", probability = TRUE)
        lines(density(x))
    })
}
