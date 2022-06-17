# Purpose

Purpose of this work folder.

Ideally store a minimum working example data set in data folder.

Add binary files in bin, and closed R functions in code. Human Readable
settings files (e.g. csv) should be placed in settings/

``` r
#rm(list = ls()) # Clean your environment:
gc() # garbage collection - It can be useful to call gc after a large object has been removed, as this may prompt R to return memory to the operating system.
```

    ##          used (Mb) gc trigger (Mb) max used (Mb)
    ## Ncells 444227 23.8     947297 50.6   643845 34.4
    ## Vcells 790750  6.1    8388608 64.0  1649465 12.6

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.6     v purrr   0.3.4
    ## v tibble  3.1.6     v dplyr   1.0.9
    ## v tidyr   1.2.0     v stringr 1.4.0
    ## v readr   2.1.2     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
list.files('code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
```

``` r
fmxdat::make_project(Open = T)

 CHOSEN_LOCATION <- "C:/Users/Erik Schulte/ownCloud/Uni Göttingen/Stellenbosch University/Data Science Methods/26802325/"
fmxdat::make_project(FilePath = glue::glue("{CHOSEN_LOCATION}Solution/"), 
                    ProjNam = "___26802325")

Texevier::create_template_html(directory = glue::glue("{CHOSEN_LOCATION}Solution/"), template_name = "Q1")
Texevier::create_template_html(directory = glue::glue("{CHOSEN_LOCATION}Solution/"), template_name = "Q2")
Texevier::create_template_html(directory = glue::glue("{CHOSEN_LOCATION}Solution/"), template_name = "Q3")
Texevier::create_template(directory = glue::glue("{CHOSEN_LOCATION}Solution/"), template_name = "Q4")
```

# Question 1 Solution

``` r
# Data loading:
    Loc <- "data/Prac2022/Covid/"
    cov_description <- read.csv(glue::glue("{Loc}covid_data_description.csv"))
    deaths_cause <- read.csv(glue::glue("{Loc}Deaths_by_cause.csv"))
    owid_data <- read.csv(glue::glue("{Loc}owid-covid-data.csv"))
    library(tidyverse)
library(ggplot2)
library(dplyr)
```

``` r
gg <- cases_per_region(continents,  xaxis_size = 5, xaxis_rows = 3)
gg
```

We can see that as of this week Africa had by far the fewest total cases
compared to the other continents in the dataframe. Less than 15 Million
COVID cases, where as Other regions like the US and Europe and Asia had
more than 100 million cases or well above. But obviously this has
multiple reasons like different populations sizes and testing
capacities.

``` r
ggg <- deaths_per_region(continents,  xaxis_size = 5, xaxis_rows = 3)
ggg
```

We can further see that this is also reflected in the deaths per region
Africa is the only continent with less than 500,000 deaths related to
COvid while all other continents had at least 1 Million so far. There is
definetely a corrleation between cases and total deaths in the regions.

``` r
# summary(owid_data$female_smokers)
# summary(owid_data$aged_65_older)
```

First, of all we not that theere is very little data on ICU admissions
and patients since the vast majority is NA’s as the summary command
shows.

``` r
# <- owid_data[owid_data$iso_code %in% c("OWID_AFR", "OWID_ASI", "OWID_EUR", "OWID_NAM", "OWID_SAM"),] 
#no data available for OWID continents...
###add lagged ICU admissions
# summary(owid_data$icu_patients) 
# summary(owid_data$weekly_icu_admissions_per_million)
# unique(owid_data$icu_patients)

##regressions does not work
#regressions <- lm(formuala = lagged_ICU_patients ~ hospital_beds_per_thousand, data = owid_data)
```

# Question 2 Solution

``` r
# Data loading:
library(readr)
library(lubridate)
```

    ## 
    ## Attache Paket: 'lubridate'

    ## Die folgenden Objekte sind maskiert von 'package:base':
    ## 
    ##     date, intersect, setdiff, union

``` r
london_weather <- read_csv("data/Prac2022/London/london_weather.csv", col_types = cols(date = col_date(format = "%Y%m%d")))
```

# Question 3 Solution

# Question 4 Solution
