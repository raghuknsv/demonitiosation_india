#Data Visualisation Assignment 3

#Student id- s3706783 Student Name-Kuruhuri Sai Raghu Ram 10/29/2018

#Introduction

'Demontisation took place from 8 November 2016 to 30 December 2016 and had a great impact in various sectors in India including the Indian automobile industry.
The following visualisation is based upon the article published by www.financialexpress.com regarding demonisation affect on Indian automobile industry. Various factors along with graphs are used in this dashboard to visualise the demontisation affect.
Article

link: https://www.financialexpress.com/auto/car-news/demonetisation-in-india-was-it-really-bad-for-the- automobile-industry-or-not/924317/ (https://www.financialexpress.com/auto/car-news/demonetisation-in- india-was-it-really-bad-for-the-automobile-industry-or-not/924317/)
Source
https://data.gov.in/search/site? query=Sales+of+Motor+Vehicles+in+India+including+Exports+from+2016&field_search (https://data.gov.in/search/site? query=Sales+of+Motor+Vehicles+in+India+including+Exports+from+2016&field_search)=&item=100
http://www.siamindia.com/statistics.aspx?mpgid=8&pgidtrail=13 (http://www.siamindia.com/statistics.aspx?mpgid=8&pgidtrail=13)
Visulisation URL
http://rpubs.com/Raghuknsv/434574 (http://rpubs.com/Raghuknsv/434574)'

#Installing the required packages

library(flexdashboard)
library(readxl)
library(tidyr)
library(dplyr)
library(plotly)

#Creating Indian Demonitisation(2016) affect on Automobile industry graph

Final_data <- read_excel("~/Desktop/Final.xlsx")
updatemenus <- list(
  list(
    active = 0,
    x = -0.125,    type= 'buttons',
    buttons = list(
      list(
        label = "Sale",
        method = "update",
        args = list(list(visible = c(TRUE, "legendonly","legendonly")))),
      list(
        label = "Production",
        method = "update",
        args = list(list(visible = c("legendonly", TRUE, "legendonly")))),
      list(
        label = "Export",
        method = "update",
        args = list(list(visible = c("legendonly", "legendonly", TRUE))))
    ) )
)
SPE <- plot_ly(data = Final_data) %>%
  add_lines(x=~Year, y=~Domestic_Sales, name = "Sales", visible = "True")%>%
  add_lines(x=~Year, y=~Production_Count, name = "Production", visible = "legendon
            ly") %>%
  add_lines(x=~Year, y=~Export_count, name = "Export", visible = "legendonly") %>%
  layout(title = "Demonitisation Effects on Automobile industry", showlegend=TRUE,
         xaxis=list(zeroline = FALSE,title="Year"),
         yaxis=list(zeroline = FALSE,title="Number of Units"),
         updatemenus=updatemenus,xlim(2012,2017))

#Creating Domestic sales of various vehicle types

updatemenus2 <- list(
  list(
    active = 0,
    x = -.125,    type= 'dropdown',
    buttons = list(
      list(
        label = "Passenger",
        method = "restyle",
        args = list(list(visible = c(TRUE, "legendonly","legendonly", "legendonly"
        )))),
      list(
        label = "Commercial",
        method = "restyle",
        args = list(list(visible = c("legendonly", TRUE, "legendonly", "legendonly
                                     ")))), list(
                                       label = "Three Wheeler",
                                       method = "restyle",
                                       args = list(list(visible = c("legendonly", "legendonly", TRUE, "legendonly
                                                                    ")))), list(
                                                                      E)))) )
        ) )
label = "Two Wheelers",
method = "restyle",
args = list(list(visible = c("legendonly", "legendonly", "legendonly", TRU
                             SP_data <- read_excel("~/Desktop/sales.xlsx")
                             salegraphs <- plot_ly(data = SP_data) %>%
                               add_bars(x=~Year, y=~Passenger_v, name = "Passenger vehicle sales", visible = "T
                                        rue", color="lightskyblue1")%>%
                               add_bars(x=~Year, y=~Commercial_v, name = "Commercial vehicle sales", visible =
                                          "legendonly", color="sienna2")%>%
                               add_bars(x=~Year, y=~Three_wheelers, name = "Three wheeler vehicle sales", visib
                                        le = "legendonly", color="palegreen3")%>%
                               add_bars(x=~Year, y=~Two_wheelers, name = "Two wheeler vehicle sales", visible =
                                          "legendonly", color="yellow")%>%
                               layout(title = "Domestic sale of various vehicle types", showlegend=FALSE,
                                      xaxis=list(zeroline = FALSE,title="Year"),
                                      yaxis=list(zeroline = FALSE,title="Number of Units"),
                                      updatemenus=updatemenus2)
                             
                             #Creating Vehicle production graph
                             
                             updatemenus <- list(
                               list(
                                 active = 0,
                                 x = -.125,    type= "dropdown",
                                 buttons = list(
                                   list(
                                     label = "Passenger",
                                     method = "restyle",
                                     args = list(list(visible = c(TRUE, "legendonly","legendonly", "legendonly"
                                     )))),
                                   list(
                                     label = "Commercial",
                                     method = "restyle",
                                     args = list(list(visible = c("legendonly", TRUE, "legendonly", "legendonly
                                                                  ")))), list(
                                                                    label = "Three wheeler",
                                                                    method = "restyle",
                                                                    args = list(list(visible = c("legendonly", "legendonly", TRUE, "legendonly
                                                                                                 ")))), list(
                                                                                                   E)))) )
                                     ) )
label = "Two Wheelers",
method = "restyle",
args = list(list(visible = c("legendonly", "legendonly", "legendonly", TRU
                             Finalp_data <- read_excel("~/Desktop/Production.xlsx")
                             linegraph2 <- plot_ly(data = Finalp_data) %>%
                               add_bars(x=~Year, y=~Passenger_Vehicles, name = "Passenger Vehicle production",
                                        visible = "True", color="grey")%>%
                               add_bars(x=~Year, y=~Commercial_Vehicles, name = "Commercial Vehicle production"
                                        , visible = "legendonly", color="sienna2") %>%
                               add_bars(x=~Year, y=~Three_Wheelers, name = "Three wheeler production", visible
                                        = "legendonly", color="palegreen3") %>%
                               add_bars(x=~Year, y=~Two_Wheelers, name = "Two wheeler production", visible = "l
                                        egendonly", color="yellow") %>%
                               layout(title = "Automobiles produced in India", showlegend=FALSE,
                                      xaxis=list(zeroline = FALSE,title="Year"),
                                      yaxis=list(zeroline = FALSE,title="Numnber of Units"),
                                      updatemenus=updatemenus)
                             
                             #Creating Gross turnover of automobile manufacturers graph
                             
                             USD_data <- read_excel("~/Desktop/USD.xlsx")
                             USDgraph <- plot_ly(data = USD_data) %>%
                               add_bars(x=~Year, y=~Gross_turnoverUSD, name = "Sales", visible = "True", color
                                        =c("green"))%>%
                               layout(title = "Gross turnover(in US$ millions)",
                                      xaxis=list(zeroline = FALSE,title="Year"),
                                      yaxis=list(zeroline = FALSE,title="Gross Turnover in USD"))