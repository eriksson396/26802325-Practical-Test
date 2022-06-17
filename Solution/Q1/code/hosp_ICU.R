hosp_ICU <- function(owid_data, xaxis_size = 5, xaxis_rows = 3){

    ##add lagged variables
    hospitality_ICU <- owid_data %>%
       group_by(continent) %>%
        dplyr::mutate(lagged_ICU_per_million = lag(icu_patients_per_million, n = 1, default = NA)) #omit.NA
    ##this one works...
    hospitality_ICU <- owid_data %>%
       group_by(continent) %>%
        dplyr::mutate(lagged_ICU_patients = lag(icu_patients, n = 1, default = NA)) #omit.NA

    hospitality_ICU <- hospitality_ICU |> mutate(across(contains('date'), ymd))

    hosp_ICU_graph <-
        owid_data |>
        group_by("continent") %>%
        ggplot() +
        geom_line(aes(x = date, y = hospital_beds_per_thousand, color = continent), size = 1, alpha = 0.8) +
        ggtitle(label = "Hospitalisation capacity development") + labs(x = "", y = "capacity") + theme_classic() +
        scale_x_date()+
   # owid_data <- transform(owid_data, Lagged_ICU=c(icu_patients_per_million[-1],NA))




class(hospitality_ICU$date)


}
