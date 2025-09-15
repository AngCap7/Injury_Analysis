library(survival)
library(tidyverse)

## load data
event_df <- readRDS("data/event_df.Rds")
tdc_df_sub <- readRDS("data/tdc_df_sub.Rds")

theme_set(theme_bw())

source("code/graphics_utils.R")
gg_tlCat(tdc_df, event_df, "Borg")
gg_tlCat(tdc_df, event_df, "P1")
gg_tlCat(tdc_df, event_df, "P2")
gg_tlCat(tdc_df, event_df, "P3")
gg_tlCat(tdc_df, event_df, "P4")
gg_tlCat(tdc_df, event_df, "P5")
