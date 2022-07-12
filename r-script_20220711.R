3+3 

#Install and run tidyverse
install.packages("tidyverse")
library(tidyverse)

#### added 20220712
read_csv("data/sci-online-classes.csv")
read_csv("data/sci-online-classes.csv", col_names = TRUE)
sci_data <- read_csv("data/sci-online-classes.csv", col_names = TRUE)

library(readr)
#col_character()
View(sci_data) #run only in the cmd line- may break knits

sci_data <- read_csv("data/sci-online-classes.csv") |> # read in data
  select(student_id, FinalGradeCEMS, course_id, ) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data