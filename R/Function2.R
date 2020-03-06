#' A NBA Function 2
#'
#' @name Function2
#' @usage Function2()
#' This function allows you to find the oldest player in the NBA data for a specific Year.
#' @param year Which specific year are you looking for? The dataset covers all seasons from 1950 to 2017.
#' @keywords NBA
#' @export
#' @examples
#' Function2()

library(tidyverse)
library(tidyr)
load(file = "data/df.RData")

Function2 <- function(year) {
   df %>%
    filter(df$Year == year) %>%
    select(Player, Age) %>%
    arrange(desc(Age)) %>%
    slice(1)
}
