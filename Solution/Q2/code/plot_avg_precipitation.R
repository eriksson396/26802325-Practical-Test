plot_avg_precipitation <- function(london_weather){

    library(ggplot2)
    ggg <- london_weather |>
        ggplot() + geom_point(aes(x = date, y = precipitation, colour = precipitation)) +
        scale_colour_gradient2(low = "yellow", mid = "steelblue", high = "darkblue", midpoint = 16) +
        geom_smooth(aes(x = date, y = precipitation), color = "black", size =0.5) +
        scale_y_continuous(limits = c(-5,65), breaks = seq(20,65,20)) +
        ggtitle ("Average Precipitation per day London (1979-2020)") +
        xlab("") + ylab ("Average Precipitation (Rainfall in mm)")
    ggg
}

