plot1_netflix <- function(topdirector, xaxis_size = 5, xaxis_rows = 3){


plot1netlifx <- topdirector %>% mutate(name = as_factor(name)) %>%
    ggplot() +
    geom_bar(aes(name, runtime, fill = type), stat = "identity") + #scale_fill_manual(values = c(Taller = "darkred", Shorter = "darkgreen")) +
    theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Directors with at least 8.4 rating on both ratings and the runtime of their movies",
         caption = "Netflix data", subtitle = "The most successful Directors by type of movie and show")

plot1_netflix

}