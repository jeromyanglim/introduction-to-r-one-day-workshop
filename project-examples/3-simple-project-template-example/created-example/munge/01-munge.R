# Example preprocessing script.
# library(ProjectTemplate); load.project(list(munging=FALSE)) # use to debug munging file

# dput(names(cas))
v <- list()
v$variables <- c("english",  "read", "math", "log_students")

cas$log_students <- log(cas$students)
