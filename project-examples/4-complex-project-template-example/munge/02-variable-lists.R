# Example preprocessing script.
# variable lists
v <- list()
v$ipip_facets <- c("ipip_n_anxiety", 
                   "ipip_n_anger", "ipip_n_depression", "ipip_n_self_consciousness", 
                   "ipip_n_immoderation", "ipip_n_vulnerability", "ipip_e_friendliness", 
                   "ipip_e_gregariousness", "ipip_e_assertiveness", "ipip_e_activity_level", 
                   "ipip_e_excitement_seeking", "ipip_e_cheerfulness", "ipip_o_imagination", 
                   "ipip_o_artistic_interests", "ipip_o_emotionality", "ipip_o_adventurousness", 
                   "ipip_o_intellect", "ipip_o_liberalism", "ipip_a_trust", "ipip_a_morality", 
                   "ipip_a_altruism", "ipip_a_cooperation", "ipip_a_modesty", "ipip_a_sympathy", 
                   "ipip_c_self_efficacy", "ipip_c_orderliness", "ipip_c_dutifulness", 
                   "ipip_c_achievement_striving", "ipip_c_self_discipline", "ipip_c_cautiousness")
v$ipip_factors <- c("ipip_neuroticism", "ipip_extraversion", "ipip_openness", 
                    "ipip_agreeableness",  "ipip_conscientiousness")
v$swb <-  c("swl", "panas_pa", "panas_na")
v$pwb <- c("pwb_prelwo",  "pwb_autonomy", "pwb_emastery", "pwb_pgrowth", 
           "pwb_plife", "pwb_selfaccept")
v$wellbeing <- c(v$swb, v$pwb)
v$allscales <- c(v$ipip_facets, v$ipip_factors, v$wellbeing)
v$ipip_factors_reversed <- gsub('ipip_neuroticism', 'ipip_neuroticism_reversed', v$ipip_factors)
v$wellbeing_reversed <- gsub('panas_na', 'panas_na_reversed', v$wellbeing)

