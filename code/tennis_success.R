tennis_success<- function(playerranking, xaxis_size = 5, xaxis_rows = 3){


    plot1tennis <- playerranking %>% #mutate(name = as_factor(name)) %>%
        ggplot() +
        geom_bar(aes(rank, height, fill = height), stat = "identity") + #scale_fill_manual(values = c(Taller = "darkred", Shorter = "darkgreen")) +
        theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        labs(title = "Relationship between Height and Rank of Tennis players",
             caption = "Thank you Jeff Sackmann", subtitle = "Are more sucessful tennis players taller?")

    plot1tennis

}