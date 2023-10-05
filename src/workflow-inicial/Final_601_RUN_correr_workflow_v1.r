# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/Final_611_CA_reparar_dataset_v1.r")
source("~/labo2023ba/src/workflow-inicial/Final_621_DR_corregir_drifting_v1.r")
source("~/labo2023ba/src/workflow-inicial/Final_631_FE_historia_v1.r")
source("~/labo2023ba/src/workflow-inicial/Final_641_TS_training_strategy_v1.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/Final_651_HT_lightgbm_v1.r")
source("~/labo2023ba/src/workflow-inicial/Final_661_ZZ_final_v1.r")
