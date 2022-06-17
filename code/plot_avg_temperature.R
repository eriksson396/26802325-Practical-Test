plot_avg_temp <- function(london_weather){

    library(ggplot2)
    g <- london_weather |>
        ggplot() + geom_point(aes(x = date, y = mean_temp, colour = mean_temp)) +
        scale_colour_gradient2(low = "darkviolet", mid = "chartreuse", high = "maroon", midpoint = 16) +
        geom_smooth(aes(x = date, y = mean_temp), color = "black", size =0.5) +
        scale_y_continuous(limits = c(-5,30), breaks = seq(5,30,5)) +
        ggtitle ("Average Temperature per day London (1979-2020)") +
        xlab("") + ylab ("Average Temperature in Celsius")
    g
}

