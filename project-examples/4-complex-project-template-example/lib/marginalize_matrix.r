marginalize_matrix <- function(x) {
    # x: generally expected to be a matrix of cross-correlations
    grand_mean <- mean(x)
    x_centred <- x - grand_mean
    row_means <- apply(x_centred, 1, mean)
    col_means <- apply(x_centred, 2, mean)
    marginalized <- t(apply(x_centred, 1, function(X) X - col_means))
    marginalized <- apply(marginalized, 2, function(X) X - row_means)
    
    output <- cbind(marginalized, row_means)
    output <- rbind(output, col_means=c(col_means, grand_mean))
    list(grand_mean=grand_mean, row_means=row_means, col_means=col_means, 
         marginalized=marginalized, output=output)
    
}
