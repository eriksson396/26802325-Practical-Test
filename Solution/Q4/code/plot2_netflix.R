plot2_netflix <- function(bad_movies, xaxis_size = 5, xaxis_rows = 3){


    plot2netflix <-
        bad_movies |>  mutate(production_countries = as_factor(production_countries)) %>%
        mutate(age_certification = as.factor(age_certification)) |>
        ggplot() +
        geom_bar(aes(production_countries, runtime, color = age_certification ), stat = "identity") + #scale_fill_manual(values = c(Taller = "darkred", Shorter = "darkgreen")) +
        theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        labs(title = "Bad movies with less than 4.4 score by production country and age certification",
             caption = "Netflix data", subtitle = "Where the bad movies are coming from")

    plot2netflix

}