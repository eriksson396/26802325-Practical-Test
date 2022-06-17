deaths_per_region <- function(continents, xaxis_size = 5, xaxis_rows = 3){

continents <- continents |> mutate(across(contains('date'), ymd))

    library(scales)
    library(lubridate)
    ggg <-
        continents |>
        group_by("iso_code") %>%
        ggplot() +
        geom_line(aes(x = date, y = total_deaths, color = iso_code), size = 1, alpha = 0.8) +
        ggtitle(label = "Covid deaths by regions February 2020 - June 15th 2022") + labs(x = "", y = "total deaths") + theme_classic() +
        scale_x_date() + scale_y_continuous(labels = comma)
    ggg
}
