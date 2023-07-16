library(magrittr)
set.seed(5678)

peng_prepped <- palmerpenguins::penguins %>%
  dplyr::filter(
    !dplyr::if_any(
      .cols = tidyselect::everything(),
      .fns = is.na
    )
  ) %>%
  tibble::add_column(., id = 1:nrow(.), .before = "species")

peng_prepped %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(-bill_length_mm, -bill_depth_mm) %>%
  readr::write_csv("penguins.csv")

peng_prepped %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(id, bill_length_mm, bill_depth_mm) %>%
  readr::write_csv("penguin_bills.csv")
