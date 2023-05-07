library(shiny)
library(dplyr)
library(echarts4r)
library(echarts4r.maps)

shinyServer(function(input, output) {

output$map <- echarts4r::renderEcharts4r({
  ca <- e_charts() %>%
  em_map("Canada") %>% 
  e_map(map = "Canada") %>%
  e_datazoom()
})
  
})
