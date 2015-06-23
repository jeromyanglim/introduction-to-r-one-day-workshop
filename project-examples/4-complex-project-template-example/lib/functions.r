
importWorksheets <- function(filename) {
    # filename: name of Excel file
    workbook <- loadWorkbook(filename)
    sheet_names <- getSheets(workbook)
    names(sheet_names) <- sheet_names
    sheet_list <- lapply(sheet_names, function(.sheet){
        readWorksheet(object=workbook, .sheet)})
}

view <- function(data, autofilter=TRUE) {
    # data: data frame
    # autofilter: whether to apply a filter to make sorting and filtering easier
    open_command <- switch(Sys.info()[['sysname']],
                           Windows= 'open',
                           Linux  = 'xdg-open',
                           Darwin = 'open')
    require(XLConnect)
    temp_file <- paste0(tempfile(), '.xlsx')
    wb <- loadWorkbook(temp_file, create = TRUE)
    createSheet(wb, name = "temp")
    writeWorksheet(wb, data, sheet = "temp", startRow = 1, startCol = 1)
    if (autofilter) setAutoFilter(wb, 'temp', aref('A1', dim(data)))
    saveWorkbook(wb, )
    system(paste(open_command, temp_file))
}




