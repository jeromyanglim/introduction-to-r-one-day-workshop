# Score tests and 

# Score IPIP Facets
meta.ipipfacets <- merge(meta.ipipfacets, 
                         meta.ipipscales[,c('scale', 'subscale', 
           'scale_abbreviation', 'subscale_name')], all.x=TRUE)
meta.ipipfacets <- meta.ipipfacets[order(meta.ipipfacets$itemNumber), ]

# Score Tests
create_scoring_key <- function(items, scales, reverse) {
    unique_scales <- unique(scales)
    key <- sapply(seq(unique_scales), 
                  function(X) ifelse(scales == unique_scales[X], reverse, 0))
    key <- data.frame(key)
    names(key) <- unique_scales
    row.names(key) <- items
    key
}

score_test <- function(meta_data, case_data, subscale_name='subscale_name', id='id', reverse='reverse') {
    scoring_key <- create_scoring_key(meta_data[, id], 
                                  meta_data[ ,subscale_name],  
                                  meta_data[ ,reverse])
    scored <- scoreItems(scoring_key, case_data[,rownames(scoring_key)])
    scored$key <- scoring_key
    scored
}

scored <- list()
# IPIP
scored$ipipfacets <- score_test(meta.ipipfacets, ccases)
ccases[,colnames(scored$ipipfacets$scores)] <- scored$ipipfacets$scores

# IPIP Scales
scored$ipipscales <- score_test(meta.ipipscales, ccases, subscale_name="scale_name", 
                              id="subscale_name")
ccases[,colnames(scored$ipipscales$scores)] <- scored$ipipscales$scores


# swl
scored$swl <- score_test(meta.swl, ccases, subscale_name='subscale')
ccases[,colnames(scored$swl$scores)] <- scored$swl$scores

# panas
scored$panas <- score_test(meta.panas, ccases) 
ccases[,colnames(scored$panas$scores)] <-  scored$panas$scores

# pwb
scored$pwb <- score_test(meta.pwb, ccases) 
ccases[,colnames(scored$pwb$scores)] <-  scored$pwb$scores


# age
ccases$age <- car::recode(ccases$demog2, "'16 and under'='16'; '30-39'='34.5'; '40-49'='44.5'; '50+'='55'")
ccases$age <- as.numeric(ccases$age)

# gender as numeric
ccases$male <- recode(ccases$demog1, "'Male'=1; 'Female'=0; else=NA")
ccases$demog1[ccases$demog1 == ""] <- NA

# reversed versions needed for some analyses
ccases$ipip_neuroticism_reversed <- 0 - ccases$ipip_neuroticism
ccases$panas_na_reversed <- 0 - ccases$panas_na

    

            