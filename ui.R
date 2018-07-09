library(shiny)

shinyUI(
        pageWithSidebar(
                # Predict the cost of a diamond
                headerPanel("Using Carat Weight to Predict Diamond Cost"),
                
                sidebarPanel(
                        numericInput('carat', 'Enter Carat Weight', 0.2 , min = .02, max = 5.0, step = 0.01),
                        submitButton('Submit')
                ),
                mainPanel(
                        h4('Prediction Results'),
                        h5('Selected carat weight:'),
                        verbatimTextOutput("inputValue"),
                        h5('Predicted Cost (in $US)'),
                        verbatimTextOutput("prediction")
                )
        )
)