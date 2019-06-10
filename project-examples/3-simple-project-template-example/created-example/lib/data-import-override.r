# Add alternative data importation commands for files in 
# the data folder that should not be imported using standard data importation rules


# Sometime around version 0.8.2, tibble conversion was made d
# disable tibble conversion

try({.convert.to.tibble <- function (data.sets)  NULL;
    assignInNamespace(".convert.to.tibble", .convert.to.tibble, 
                  "ProjectTemplate")})
