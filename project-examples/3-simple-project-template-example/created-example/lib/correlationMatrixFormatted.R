correlationMatrixFormatted <- function(x, variableNames, correlationDecimals = 2, 
		descriptivesDecimals = 2) {
	# arguments:
	# x: data frame including only variables wanted for table
	# variableNames: character vector of variable names as 
	# they should appear in the table and in the same order as the variables in x
	
	if (length(names(x)) != length(variableNames)) stop("number of variables in x is not equal to number of variableNames")
	
	k <- length(variableNames)
	fRIJ <- cor(x, use = "pair")
	variableNumberI <- seq(variableNames);
	columnNames <- c("", "Variable", variableNumberI);			
	
	# Format information.
	fVariableNumberI <- paste(variableNumberI, ".", sep = "");

	
	# Format correlation matrix.
	fRIJ <- formatC(fRIJ, digits=2, format = "f") 	# get 2 decimal places
	fRIJ <- gsub(pattern = "0.", ".", fRIJ, fixed = TRUE); # remove leading 0	
	fRIJ[!lower.tri(fRIJ)] <- ""; 	# remove upper triangle and main diagonal
	diag(fRIJ)  <- "---"; # add dash ? to main diagonal
    
	
	# Combine elements
	result <- cbind(fVariableNumberI, variableNames, fRIJ)
	result <- rbind(columnNames, result)
	
	result
}
	
	