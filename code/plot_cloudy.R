plot_cloudy <- function(london_weather){

    library(ggplot2)
    gggg <- london_weather |>
        ggplot() + geom_point(aes(x = date, y = cloud_cover, colour = cloud_cover)) +
        scale_colour_gradient2(low = "yellow", mid = "steelblue", high = "darkblue", midpoint = 16) +
        geom_smooth(aes(x = date, y = precipitation), color = "black", size =0.5) +
        scale_y_continuous(limits = c(-5,15), breaks = seq(5,30,5)) +
        ggtitle ("Average Cloud Cover per day London (1979-2020)") +
        xlab("") + ylab ("Average cloud cover (measured in Okta)")
    gggg
}
