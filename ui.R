library(shiny)

shinyUI(fluidPage(
  fluidRow(
    column(width = 8, offset = 3,div(
      img(style="display:inline;border-style: solid;",
          src='logo.JPG',
          width = "120",
          height = "80"),
      h1(style="display:inline;color: black;padding: 30px;text-align:center;background-color: white;font-size: 30px;font-family: serif;",
         "Child height prediction")))
  ),
      titlePanel(hr()),
      sidebarLayout(
            sidebarPanel(
                  helpText("Prediction of the child's height on the basis gender and parent's height"),
                  helpText("Parameters:"),
                  sliderInput(inputId = "inFh",
                              label = "Father's height (cm):",
                              value = 150,
                              min = 150,
                              max = 220,
                              step = 1),
                  sliderInput(inputId = "inMh",
                              label = "Mother's height (cm):",
                              value = 140,
                              min = 140,
                              max = 200,
                              step = 1),
                  radioButtons(inputId = "inGen",
                               label = "Child's gender: ",
                               choices = c("Female"="female", "Male"="male"),
                               inline = TRUE)
            ),
            
            mainPanel(
                  htmlOutput("pText"),
                  htmlOutput("pred"),
                  plotOutput("Plot", width = "50%")
                  #plotlyOutput("Plot")
            )
      )
))