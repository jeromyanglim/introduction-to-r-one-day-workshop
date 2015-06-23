minimum_significant_r <- function(n, alpha=.05, twotail=TRUE, precision=.01) {
    # calculate minimum significant correlation
    # useful to report at bottom of correlation matrices instead of using stars
    # n: sample size
    # alpha: alpha level for determining statistical significance
    # twotail: TRUE means two tailed significance; 
    #          FALSE means one tailed significance
    # precision: precision of significant r (typically .01, .001, or .0001)
    
    r <- seq(0, 1, by=precision)
    tvalue <- r * sqrt((n-2)/(1-r^2))
    pvalue <-  1 - pt(tvalue,  df=n-2)
    if(twotail)  pvalue <- pvalue * 2 
    first <- min(which(pvalue < alpha))
    r[first]
}