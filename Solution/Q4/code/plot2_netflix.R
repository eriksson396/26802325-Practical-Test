plot2_netflix <- function(bad_movies, xaxis_size = 5, xaxis_rows = 3){


    plot2netflix <-
        bad_movies |>  mutate(production_countries = as_factor(production_countries)) %>%
        ggplot() +
        geom_bar(aes(production_countries, imdb_score, color = production_countries ), stat = "identity") + #scale_fill_manual(values = c(Taller = "darkred", Shorter = "darkgreen")) +
        theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        labs(title = "Bad movies by production country and age certification",
             caption = "Netflix data", subtitle = "Where the bad movies are coming from")

    plot2_netflix

}