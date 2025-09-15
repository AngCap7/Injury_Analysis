## graphics_utils.R

## gg_tlCat()
## plots each player's internal training load (their subject perception) per
## each training session that he has completed. The name, gg_tlCat, stands for
## "ggplot-tyype plot for Categorical training load (tlCat)"
## source/inspiration: SOFA profile plot in https://adibender.github.io/pammtools/articles/cumulative-effects.html
gg_tlCat <- function(tdc_df, event_df, var) {
  data_prep <- cut_data2_1st_event(tdc_df, event_df) 
  tdc_df_aux <- data_prep[[1]]
  event_df_aux <- data_prep[[2]]
  
  var_label <- names(wellness_var_labels(var))
  
  tdc_df_aux %>% 
    group_by(player) %>% 
    mutate(day_of_training = 1:n()) %>% 
    ungroup() %>% 
    mutate(player = factor(player) %>% reorder(day_of_training, max)) %>% 
    ggplot(aes(x = day_of_training, y = player, fill = .data[[var]])) + 
    geom_raster() +
    scale_fill_viridis_c(name = var_label) +
    xlab("Number of day of training") +
    ggtitle(paste0("Each player's value of ", var_label, " in each day of training\nuntil he gots injured/censored (1st event)"))
}

cut_data2_1st_event <- function(tdc_df, event_df) {
  ## time until 1st injury
  tdc_df_aux <- tdc_df
  
  event_df_aux <- event_df %>% 
    filter(enum == 1) %>% 
    droplevels()
  tdc_df_su<-tdc_df_sub
  for(i in seq_len(nrow(event_df_aux))) {
    # cat("i = ", i, "\n")
    playr <- event_df_aux$player[[i]]
    tstop_mn <- event_df_aux$tstop_min[[i]]
    
    idx <- which(tdc_df_su$player %in% playr & tdc_df_su$time_expo > tstop_mn)
    # cat("idx", idx, "\nlength(idx) = ", length(idx), "\n")
    if (length(idx))  tdc_df_su <- tdc_df_su[-idx, ] %>% droplevels()  ## if length(idx) != 0
  }
  
  return(list(tdc_df_sub, event_df_aux))
}

tdc_df_su$P1<-tdc_df_su$P1-1
tdc_df_su$expo_h<-round(tdc_df_su$time_expo/60,digits = 2)
tdc_df_su$expo_h2<-round(tdc_df_su$expo_h^2,digits =2)
tdc_df_su$expo_d<-round(tdc_df_su$expo_h/24,digits = 2)
tdc_df_su$training_time_h<-tdc_df_su$training_time_min/60
X<-model.matrix(P1~expo_h+expo_h2,data=tdc_df_su)
X
Z<-model.matrix(~-1+as.factor(player),data=tdc_df_su)
BBmm(fixed.formula=P1~expo_d+training_time_h,Z=Z,nRandComp =36,m=4,data=tdc_df_su,show=TRUE)

wellness_var_labels <- function(var) {
  label <- case_when(
    var == "P1" ~ "Fatigue",
    var == "P2" ~ "Sleep",
    var == "P3" ~ "General complaints",
    var == "P4" ~ "Stress",
    var == "P5" ~ "Mood" 
  )
  label <- ifelse(is.na(label), var, label)
  var <- set_names(var, nm = label) 
  return(var)
}
