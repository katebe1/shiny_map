library(shiny)
library(echarts4r)
library(echarts4r.maps)

shinyUI(fluidPage(
      echarts4rOutput("plot"),
      echarts4rOutput("map")
    ))
