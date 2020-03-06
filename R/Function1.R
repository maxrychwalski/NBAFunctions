#' A NBA Function 1
#'
#' @name Function1
#' @usage Function1()
#' This function allows you to find the Average Points scored in a specific Year.
#' @param year Which specific year are you looking for? The dataset covers all seasons from 1950 to 2017.
#' @keywords NBA
#' @export
#' @examples
#' @import tidyverse
#' @importFrom magrittr "%>%"


library(tidyverse)
library(tidyr)
load(file = "data/df.RData")

Function1 <- function(year) {
    df %>%
    filter(df$Year == year) %>%
    summarise(AvgPTS = mean(PTS, na.rm=TRUE))
}
