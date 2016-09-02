library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"underweight",
  ifelse(BMI_value<25,"normal weight",
  ifelse(BMI_value<30,"overweight","obesity")))
}

tips<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"Gain weight with healthy diet and exercise",
  ifelse(BMI_value<25,"Maintain your weight with healthy lifestyle",
  ifelse(BMI_value<30,"Loss weight with heathly diet and exercise","YOUR HEALTH is on RED LIGHT,please visit doctor for help before its too late. Strongly recommend LOSS WEIGHT with heathly diet and exercise ")))
}

shinyServer(
  function(input, output) {
    Inputsummary <- reactive({
      # Compose data frame
      data.frame(
        Information = c("Gender", 
                 "Age",
                 "Weight(kg)",
                 "Height(meters)"),
        InputValue = as.character(c(input$gender, 
                               input$age,
                               input$weight,
                               input$height)), 
        stringsAsFactors=FALSE)
    }) 
    
    # Show the values using an HTML table
    output$Inputsummary <- renderTable({
      Inputsummary()
    })
    
    output$estimation <- renderPrint({BMI(input$weight,input$height)})
    output$diagnostic <- renderPrint({diagnostic_f(input$weight,input$height)})
    output$tips <- renderPrint(({tips(input$weight,input$height)}))
   } 
)