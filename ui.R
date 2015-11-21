# Module 9 Project

library(shiny)

ui <- fluidPage(
    tags$h1("My Friend's Shiny Stat App"),
    "Change the values of the text boxes below and the histogram and density plot will reformat.",
    "That is, enter new values for number of observations, mean or standard deviation, and ",
    "watch the app redisplay the histogram and density plot.", tags$br(),tags$br(),
    fluidRow(column(width=2, numericInput(inputId = "re.n", 
                                          label = "Enter # of observations", value = 100))),
    fluidRow(column(width=2, numericInput(inputId = "re.mu", 
                                          label = "Enter mean", value = 0))),
    fluidRow(column(width=2, numericInput(inputId = "re.sigma",
                                          label = "Enter standard deviation", value = 1))),
    fluidRow(column(width = 4, plotOutput("hist")))
)
