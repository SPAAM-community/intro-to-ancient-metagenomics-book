library(magrittr)

peng <- palmerpenguins::penguins

peng_prepped <- peng %>%
  dplyr::filter(!dplyr::if_any(.fns = is.na)) %>%
  tibble::add_column(., id = 1:nrow(.), .before = "species")

peng_prepped %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(-bill_length_mm, -bill_depth_mm) %>%
  readr::write_csv("data/penguins.csv")

peng_prepped %>%
  dplyr::slice_sample(n = 300) %>%
  dplyr::arrange(id) %>%
  dplyr::select(id, bill_length_mm, bill_depth_mm) %>%
  readr::write_csv("data/penguin_bills_2009.csv")
