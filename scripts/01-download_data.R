#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(httr)
library(tidyverse)
library(xml2)

#### Identify URL#### 
NASA_APOD_20020801 <- GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2002-08-01")

#### Download data ####
NASA_APOD_20020801 <- GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2001-08-01")


#### Save data ####
content(NASA_APOD_20020801)$url |> 
  download.file(destfile = "inputs/NASA_APOD_20020801.jpg") 
  

         