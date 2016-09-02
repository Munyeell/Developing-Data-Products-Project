library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      #simple integer interval
      "PLEASE INSERT YOUR INFROMATION",
      
      radioButtons('gender', "Gender", c("Female" = "Female", "Male" = "Male")),
      sliderInput('age','Age',min = 18, max = 100, value = 27),
      numericInput('weight', 'Insert your weight in kilograms(kg)', 50, min = 10, max = 200, step = 0.01) ,
      numericInput('height', 'Insert your height in metres(m)', 1.63, min = 0.2, max = 3, step = 0.01)
      
      ), 
    mainPanel(
      p('The Body mass index (BMI) is an established measure utilized by physicians and health experts to determine weight status for adult men and women that 18 years old and above.'),
      p('Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      
      h4('Summary table that show all the information enter by you:'), 
      #Show a table summarizing the valuse entered
      tableOutput("Inputsummary"),
      
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),strong(verbatimTextOutput("diagnostic")),
      p('Please :',strong(verbatimTextOutput('tips')))
    )
    
  )   
)