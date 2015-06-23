relabel_lookup <- function(x, lookup) {
    # x character vector
    # lookup: matrix with two columns
    #          the first column is the matching
    #          second column is the replacement text in the event of a match
    # where no match occurs, value of x is left as is
    stopifnot(ncol(lookup)==2)
    meta_names <- lookup[,1]
    meta_labels <- lookup[,2]
    
    new_x <- meta_labels[match(x, meta_names)]
    new_x[is.na(new_x)] <- x[is.na(new_x)]
    new_x
}
