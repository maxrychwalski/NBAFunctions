#' A NBA Function 3
#'
#' @name Function3
#' @usage Function3()
#' This function should limit the data for a specific year to include numeric continuous variables only (not categorical data) and should have the correlation matrix for all numeric variables in the data for that year.
#' @param year Which specific year are you looking for? The dataset covers all seasons from 1950 to 2017.
#' @keywords NBA
#' @export
#' @examples
#' Function3()

library(tidyverse)
library(tidyr)
load(file = "data/df.RData")

Function3 <- function(year) {
df3 <- df %>%
    filter(df$Year == year) %>%
    select(Age, PTS, G, TS., FTr, OWS, DWS, WS, FG, FGA, FG., X2P, X2PA, X2P., eFG., FT, FTA, FT., PF, PTS)
df4 <- na.omit(df3)
cor(df4)
}
