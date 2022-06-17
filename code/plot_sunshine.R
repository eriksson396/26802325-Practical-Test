plot_sunshine<- function(london_weather){

    library(ggplot2)
    gg <- london_weather |>
        ggplot() + geom_point(aes(x = date, y = sunshine, colour = sunshine)) +
        scale_colour_gradient2(low = "blue3", mid = "firebrick1", high = "maroon", midpoint = 16) +
        geom_smooth(aes(x = date, y = sunshine), color = "black", size =0.5) +
       # scale_y_continuous(limits = c(0,20), breaks = seq(0,20,0)) +
        ggtitle ("Average Sunshine per day London (1979-2020)") + labs(x="",y="Average Sunshine Hours", caption = "Source: UK National Weather Service")
    gg
}

