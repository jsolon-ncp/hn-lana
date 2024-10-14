****Use combined_pmnp_275_data_11Oct2024.dta

****Run first Report_variables_275_06Aug2024



****TABLES from combined 275 FILE

**** Coverage of areas
****TABLES from combined 275 FILE with dropped 235 municipalities for BARMM

**** Coverage of areas
table (site_region_label), statistic(frequency) statistic(percent) nformat(%6.1f percent) sformat(`"%s%%"' percent)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Coverage of survey")
putdocx collect
putdocx save Tables275.docx, replace

table (site_province_label), statistic(frequency) statistic(percent) nformat(%6.1f percent) sformat(`"%s%%"' percent)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Coverage of survey")
putdocx collect
putdocx save Tables275.docx, replace


***** Income classifications
table (var) (site_region_label), statistic(fvfrequency income_class income_src01 income_src02 income_src03 income_src04 income_src05 income_src77) statistic(fvpercent income_class income_src01 income_src02 income_src03 income_src04 income_src05 income_src77) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[income_class income_src01 income_src02 income_src03 income_src04 income_src05 income_src77]#result[col1], nformat(%6.0fc)
collect style cell var[income_class income_src01 income_src02 income_src03 income_src04 income_src05 income_src77]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Socio-economic profile")
putdocx collect
putdocx save Tables275.docx, append


***Poverty incidence
histogram poverty_inc_2021, frequency normal kdensity
sum poverty_inc_2021
sktest poverty_inc_2021
swilk poverty_inc_2021
tabstat poverty_inc_2021, stat(count mean sd p25 p50 p75 min max)


***Totals for health and delivery facilities
table (var) (site_region_label), statistic(total hf_rhu hf_birth hf_dcc hf_bhs brgys) 
collect recode result total=col1
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hf_rhu hf_birth hf_dcc hf_bhs brgys]#result[col1 col2], nformat(%6.0f)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Total health facilities")
putdocx collect
putdocx save Tables275.docx, append




****Means for Nutritional Outcomes from OPT
table (var) (site_region_label), statistic(mean stunting_2023 wasting_2023 underweight_2023) 
collect recode result mean=col1
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[stunting_2023 wasting_2023 underweight_2023]#result[col1 col2], nformat(%6.2f)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Nutritional Outcomes from OPT 2023")
putdocx collect
putdocx save Tables275.docx, append


***OPT coverage 2023
histogram opt_coverage_2023, frequency normal kdensity
sum opt_coverage_2023
sktest opt_coverage_2023
swilk opt_coverage_2023
tabstat opt_coverage_2023, stat(count mean sd p25 p50 p75 min max)



***** IYCF Practices (High impact Nutri intervention)
table (var) (site_region_label), statistic(fvfrequency inibf_cat ebf_cat cf_cat mnp_i1_supp_cat mnp_i2_supp_cat va_h_supp_cat va_h2_supp_cat) statistic(fvpercent inibf_cat ebf_cat cf_cat mnp_i1_supp_cat mnp_i2_supp_cat va_h_supp_cat va_h2_supp_cat) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[inibf_cat ebf_cat cf_cat mnp_i1_supp_cat mnp_i2_supp_cat va_h_supp_cat va_h2_supp_cat]#result[col1], nformat(%6.0fc)
collect style cell var[inibf_cat ebf_cat cf_cat mnp_i1_supp_cat mnp_i2_supp_cat va_h_supp_cat va_h2_supp_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Coverage of IYCF practices")
putdocx collect
putdocx save Tables275.docx, append



***Maternal supplementation
table (var) (site_region_label), statistic(fvfrequency ifa_supp_cat cal_supp_cat iod_supp_cat vapp_supp_cat ifapp_supp_cat) statistic(fvpercent ifa_supp_cat cal_supp_cat iod_supp_cat vapp_supp_cat ifapp_supp_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[ifa_supp_cat cal_supp_cat iod_supp_cat vapp_supp_cat ifapp_supp_cat]#result[col1], nformat(%6.0fc)
collect style cell var[ifa_supp_cat cal_supp_cat iod_supp_cat vapp_supp_cat ifapp_supp_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Coverage of Maternal Micronutrient Supplementation")
putdocx collect
putdocx save Tables275.docx, append



***** MCH Interventions (Maternal & Delivery)
table (var) (site_region_label), statistic(fvfrequency anc_cat ppv_cat fbd_cat shp_cat fic_cat) statistic(fvpercent anc_cat ppv_cat fbd_cat shp_cat fic_cat) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[anc_cat ppv_cat fbd_cat shp_cat fic_cat]#result[col1], nformat(%6.0fc)
collect style cell var[anc_cat ppv_cat fbd_cat shp_cat fic_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Coverage of Essential MCH Interventions")
putdocx collect
putdocx save Tables275.docx, append



***Totals for SAM & MAM (PIMAM)
table (var) (site_region_label), statistic(total pimam_a_sum2 pimam_a1_sum2 pimam_a2_sum2 pimam_a4_sum2 pimam_a3_sum2 pimam_b_sum2 pimam_b1_sum2 pimam_b2_sum2 pimam_b4_sum2 pimam_b3_sum2) 
collect recode result total=col1
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[pimam_a_sum2 pimam_a1_sum2 pimam_a2_sum2 pimam_a4_sum2 pimam_a3_sum2 pimam_b_sum2 pimam_b1_sum2 pimam_b2_sum2 pimam_b4_sum2 pimam_b3_sum2]#result[col1 col2], nformat(%6.0f)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Total SAM & MAM")
putdocx collect
putdocx save Tables275.docx, append



***Human Resources Ratio Met
table (var) (site_region_label), statistic(fvfrequency doc_met mm_met phn_met nd_met mt_met phc_met bhw_met bns_met) statistic(fvpercent doc_met mm_met phn_met nd_met mt_met phc_met bhw_met bns_met) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[doc_met mm_met phn_met nd_met mt_met phc_met bhw_met bns_met]#result[col1], nformat(%6.0fc)
collect style cell var[doc_met mm_met phn_met nd_met mt_met phc_met bhw_met bns_met]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percent Meeting Standard Ratio of Human Resources")
putdocx collect
putdocx save Tables275.docx, append



*****HSPs %trainings per category (275LGUs)
table (var) (site_region_label), statistic(fvfrequency hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat ohg_hsp_cat cmnd_hsp_cat eccd1_hsp_cat eccd2_hsp_cat) statistic(fvpercent hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat ohg_hsp_cat cmnd_hsp_cat eccd1_hsp_cat eccd2_hsp_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat ohg_hsp_cat cmnd_hsp_cat eccd1_hsp_cat eccd2_hsp_cat]#result[col1], nformat(%6.0fc)
collect style cell var[hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat ohg_hsp_cat cmnd_hsp_cat eccd1_hsp_cat eccd2_hsp_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Training among Health Service Providers on F1KD-related topics_275LGUs")
putdocx collect
putdocx save Tables275.docx, append



*****HSPs %trainings per category (BARMM specific)
table (var) (site_region_label), statistic(fvfrequency hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat cgs_hsp_cat opt_hsp_cat fhsis_hsp_cat sbcc_hsp_cat) statistic(fvpercent hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat cgs_hsp_cat opt_hsp_cat fhsis_hsp_cat sbcc_hsp_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat cgs_hsp_cat opt_hsp_cat fhsis_hsp_cat sbcc_hsp_cat]#result[col1], nformat(%6.0fc)
collect style cell var[hiycmhn_hsp_cat imci_hsp_cat niem_hsp_cat pimam_hsp_cat cgs_hsp_cat opt_hsp_cat fhsis_hsp_cat sbcc_hsp_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Training among Health Service Providers on F1KD-related topics_BARMM LGUs")
putdocx collect
putdocx save Tables275.docx, append



*****CHWs %trainings per category (275LGUs)
table (var) (site_region_label), statistic(fvfrequency hiycmh_chw_cat ncbhw_chw_cat ncbns_chw_cat imci_chw_cat pimam_chw_cat niem_chw_cat ohg_chw_cat cmnsd_chw_cat eccdr1_chw_cat eccdr2_chw_cat) statistic(fvpercent hiycmh_chw_cat ncbhw_chw_cat ncbns_chw_cat imci_chw_cat pimam_chw_cat niem_chw_cat ohg_chw_cat cmnsd_chw_cat eccdr1_chw_cat eccdr2_chw_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hiycmh_chw_cat ncbhw_chw_cat ncbns_chw_cat imci_chw_cat pimam_chw_cat niem_chw_cat ohg_chw_cat cmnsd_chw_cat eccdr1_chw_cat eccdr2_chw_cat]#result[col1], nformat(%6.0fc)
collect style cell var[hiycmh_chw_cat ncbhw_chw_cat ncbns_chw_cat imci_chw_cat pimam_chw_cat niem_chw_cat ohg_chw_cat cmnsd_chw_cat eccdr1_chw_cat eccdr2_chw_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Training among Community Healthcare Workers on F1KD-related topics_275LGUs")
putdocx collect
putdocx save Tables275.docx, append



*****CHWs %trainings per category (BARMM specific)
table (var) (site_region_label), statistic(fvfrequency ncbns_chw_cat niem_chw_cat anth_chw_cat bhs2_chw_cat snf_chw_cat mcsb_chw_cat sbcc_chw_cat) statistic(fvpercent ncbns_chw_cat niem_chw_cat anth_chw_cat bhs2_chw_cat snf_chw_cat mcsb_chw_cat sbcc_chw_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[ncbns_chw_cat niem_chw_cat anth_chw_cat bhs2_chw_cat snf_chw_cat mcsb_chw_cat sbcc_chw_cat]#result[col1], nformat(%6.0fc)
collect style cell var[ncbns_chw_cat niem_chw_cat anth_chw_cat bhs2_chw_cat snf_chw_cat mcsb_chw_cat sbcc_chw_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Training among Community Healthcare Workers on F1KD-related topics_BARMM LGUs")
putdocx collect
putdocx save Tables275.docx, append



****Anthropometric tools in barangays reaching 100% availability
table (var) (site_region_label), statistic(fvfrequency wt_adult_cov wt_child_cov ht_adult_cov ht_child_cov muac_adult_cov muac_child_cov) statistic(fvpercent wt_adult_cov wt_child_cov ht_adult_cov ht_child_cov muac_adult_cov muac_child_cov)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[wt_adult_cov wt_child_cov ht_adult_cov ht_child_cov muac_adult_cov muac_child_cov]#result[col1], nformat(%6.0fc)
collect style cell var[wt_adult_cov wt_child_cov ht_adult_cov ht_child_cov muac_adult_cov muac_child_cov]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Availability of anthropometric tools in barangays (Covers >=100% of the brgys)")
putdocx collect
putdocx save Tables275.docx, append


****Functionality of Anthropometric tools
table (var) (site_region_label), statistic(fvfrequency hscale_fxn dscale_fxn lboard_fxn hboard_fxn muac_fxn) statistic(fvpercent hscale_fxn dscale_fxn lboard_fxn hboard_fxn muac_fxn)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hscale_fxn dscale_fxn lboard_fxn hboard_fxn muac_fxn]#result[col1], nformat(%6.0fc)
collect style cell var[hscale_fxn dscale_fxn lboard_fxn hboard_fxn muac_fxn]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Functionality of anthropometric tools")
putdocx collect
putdocx save Tables275.docx, append



***** Availability H&N Commodities and Supplies
table (var) (site_region_label), statistic(fvfrequency va_yn mnp_yn ifa_yn rutf_yn rusf_yn dwm_yn mms_yn bfkit_yn) statistic(fvpercent va_yn mnp_yn ifa_yn rutf_yn rusf_yn dwm_yn mms_yn bfkit_yn) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[va_yn mnp_yn ifa_yn rutf_yn rusf_yn dwm_yn mms_yn bfkit_yn]#result[col1], nformat(%6.0fc)
collect style cell var[va_yn mnp_yn ifa_yn rutf_yn rusf_yn dwm_yn mms_yn bfkit_yn]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Availability of commodities for high impact nutrition interventions")
putdocx collect
putdocx save Tables275.docx, append




*****Nutrition Commodities Threshold for Met 10% of Estimated Annual Reqts
table (var) (site_region_label), statistic(fvfrequency va100_thresh_met va200_thresh_met mnp_thresh_met ifa_pw_thresh_met rutf_thresh3_met) statistic(fvpercent va100_thresh_met va200_thresh_met mnp_thresh_met ifa_pw_thresh_met rutf_thresh3_met) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[va100_thresh_met va200_thresh_met mnp_thresh_met ifa_pw_thresh_met rutf_thresh3_met]#result[col1], nformat(%6.0fc)
collect style cell var[va100_thresh_met va200_thresh_met mnp_thresh_met ifa_pw_thresh_met rutf_thresh3_met]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Nutrition Commodities Threshold for Met 10% of Estimated Annual Reqts")
putdocx collect
putdocx save Tables275.docx, append




*****Availability of Job aids
table (var) (site_region_label), statistic(fvfrequency cgs_yn wtchrt_yn pgbk_yn iycfcrd_yn pgpny_yn ngmf_yn) statistic(fvpercent cgs_yn wtchrt_yn pgbk_yn iycfcrd_yn pgpny_yn ngmf_yn) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[cgs_yn wtchrt_yn pgbk_yn iycfcrd_yn pgpny_yn ngmf_yn]#result[col1], nformat(%6.0fc)
collect style cell var[cgs_yn wtchrt_yn pgbk_yn iycfcrd_yn pgpny_yn ngmf_yn]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Availability of Job Aids")
putdocx collect
putdocx save Tables275.docx, append


*****Threshold for  Job aids (>=100% fully-accessible, <100% insufficient, Not available)
table (var) (site_region_label), statistic(fvfrequency cgs_thresh_met wtchrt_thresh_met pgbk_thresh_met iycfcrd_thresh_met pgpny_thresh_met ngmf_thresh_met) statistic(fvpercent cgs_thresh_met wtchrt_thresh_met pgbk_thresh_met iycfcrd_thresh_met pgpny_thresh_met ngmf_thresh_met) 
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[cgs_thresh_met wtchrt_thresh_met pgbk_thresh_met iycfcrd_thresh_met pgpny_thresh_met ngmf_thresh_met]#result[col1], nformat(%6.0fc)
collect style cell var[cgs_thresh_met wtchrt_thresh_met pgbk_thresh_met iycfcrd_thresh_met pgpny_thresh_met ngmf_thresh_met]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Threshold for Job Aids")
putdocx collect
putdocx save Tables275.docx, append



*********Community-based Nutrition Service Delivery & Multisectoral Nutrition Convergence
****** WASH (Water & Sanitation)
table (var) (site_region_label), statistic(fvfrequency wash_a_cat wash_a2_cat wash_a3_cat wash_4_cat) statistic(fvpercent wash_a_cat wash_a2_cat wash_a3_cat wash_4_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[wash_a_cat wash_a2_cat wash_a3_cat wash_4_cat]#result[col1], nformat(%6.0fc)
collect style cell var[wash_a_cat wash_a2_cat wash_a3_cat wash_4_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. WASH indicators Water & Sanitation")
putdocx collect
putdocx save Tables275.docx, append

****** WASH (Water & Sanitation)_2024 TARGETS
table (var) (site_region_label), statistic(fvfrequency wash_a_cat2024 wash_a2_cat2024 wash_a3_cat2024 wash_4_cat2024) statistic(fvpercent wash_a_cat2024 wash_a2_cat2024 wash_a3_cat2024 wash_4_cat2024)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[wash_a_cat2024 wash_a2_cat2024 wash_a3_cat2024 wash_4_cat2024]#result[col1], nformat(%6.0fc)
collect style cell var[wash_a_cat2024 wash_a2_cat2024 wash_a3_cat2024 wash_4_cat2024]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. WASH indicators Water & Sanitation_2024 TARGETS")
putdocx collect
putdocx save Tables275.docx, append



****** ECCD coverage
table (var) (site_region_label), statistic(fvfrequency eccd_a_cat eccd_b1_cat eccd_c1_cat eccd_d1_cat eccd_e1_cat cdw_a1_cat pdc_a1_cat) statistic(fvpercent eccd_a_cat eccd_b1_cat eccd_c1_cat eccd_d1_cat eccd_e1_cat cdw_a1_cat pdc_a1_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[eccd_a_cat eccd_b1_cat eccd_c1_cat eccd_d1_cat eccd_e1_cat cdw_a1_cat pdc_a1_cat]#result[col1], nformat(%6.0fc)
collect style cell var[eccd_a_cat eccd_b1_cat eccd_c1_cat eccd_d1_cat eccd_e1_cat cdw_a1_cat pdc_a1_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. ECCD coverage of services")
putdocx collect
putdocx save Tables275.docx, append



******Other Relevant Human Resource for Multisectoral Activities
table (var) (site_region_label), statistic(fvfrequency si_met csv_met tm_met mswdo_met mssd_met ml_met pl_met cdw_met) statistic(fvpercent si_met csv_met tm_met mswdo_met mssd_met ml_met pl_met cdw_met)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[si_met csv_met tm_met mswdo_met mssd_met ml_met pl_met cdw_met]#result[col1], nformat(%6.0fc)
collect style cell var[si_met csv_met tm_met mswdo_met mssd_met ml_met pl_met cdw_met]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Other Relevant Human resource for Multisectoral activities")
putdocx collect
putdocx save Tables275.docx, append




*****LNC Functionality & LNAP Availability
table (var) (site_region_label), statistic(fvfrequency lnc_yn lnc_fnc marginalized_sec lnap_mun lnap_reso) statistic(fvpercent lnc_yn lnc_fnc marginalized_sec lnap_mun lnap_reso)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[lnc_yn lnc_fnc marginalized_sec lnap_mun lnap_reso]#result[col1], nformat(%6.0fc)
collect style cell var[lnc_yn lnc_fnc marginalized_sec lnap_mun lnap_reso]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Availability of LNC & Functionality & LNAP")
putdocx collect
putdocx save Tables275.docx, append



****Policies & Resolutions
table (var) (site_region_label), statistic(fvfrequency res_yn res_a res_b res_c res_d res_e res_f res_g res_h res_i res_j res_k res_l res_m res_n res_o) statistic(fvpercent res_yn res_a res_b res_c res_d res_e res_f res_g res_h res_i res_j res_k res_l res_m res_n res_o)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[res_yn res_a res_b res_c res_d res_e res_f res_g res_h res_i res_j res_k res_l res_m res_n res_o]#result[col1], nformat(%6.0fc)
collect style cell var[res_yn res_a res_b res_c res_d res_e res_f res_g res_h res_i res_j res_k res_l res_m res_n res_o]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Availability of Nutrition-related Policies&Resolutions")
putdocx collect
putdocx save Tables275.docx, append



****Financing & Budget
table (var) (site_region_label), statistic(fvfrequency hn_approved_cat hn_utilized_cat) statistic(fvpercent hn_approved_cat hn_utilized_cat)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hn_approved_cat hn_utilized_cat]#result[col1], nformat(%6.0fc)
collect style cell var[hn_approved_cat hn_utilized_cat]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. % Budget Approved and Utilized")
putdocx collect
putdocx save Tables275.docx, append


*****Sources of Nutrition budget
table (var) (site_region_label), statistic(fvfrequency hnbudget_src01 hnbudget_src02 hnbudget_src03 hnbudget_src04 hnbudget_src05) statistic(fvpercent hnbudget_src01 hnbudget_src02 hnbudget_src03 hnbudget_src04 hnbudget_src05)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hnbudget_src01 hnbudget_src02 hnbudget_src03 hnbudget_src04 hnbudget_src05]#result[col1], nformat(%6.0fc)
collect style cell var[hnbudget_src01 hnbudget_src02 hnbudget_src03 hnbudget_src04 hnbudget_src05]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources of Health or Nutrition Budget")
putdocx collect
putdocx save Tables275.docx, append


*****Focal for planning of health/nutrition budget
table (var) (site_region_label), statistic(fvfrequency hnbudget_focal01 hnbudget_focal02 hnbudget_focal03 hnbudget_focal04 hnbudget_focal05 hnbudget_focal06) statistic(fvpercent hnbudget_src01 hnbudget_focal01 hnbudget_focal02 hnbudget_focal03 hnbudget_focal04 hnbudget_focal05 hnbudget_focal06)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[hnbudget_focal01 hnbudget_focal02 hnbudget_focal03 hnbudget_focal04 hnbudget_focal05 hnbudget_focal06]#result[col1], nformat(%6.0fc)
collect style cell var[hnbudget_focal01 hnbudget_focal02 hnbudget_focal03 hnbudget_focal04 hnbudget_focal05 hnbudget_focal06]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Focal for health/nutrition budget planning")
putdocx collect
putdocx save Tables275.docx, append



****Data and Information Systems
table (var) (site_region_label), statistic(fvfrequency fhsis_present opt_present mellpi_present iclinicsys_present pmnp_present) statistic(fvpercent fhsis_present opt_present mellpi_present iclinicsys_present pmnp_present)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[fhsis_present opt_present mellpi_present iclinicsys_present pmnp_present]#result[col1], nformat(%6.0fc)
collect style cell var[fhsis_present opt_present mellpi_present iclinicsys_present pmnp_present]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Usage of Information Systems ")
putdocx collect
putdocx save Tables275.docx, append


****Information System Equipment & resources 
table (var) (site_region_label), statistic(fvfrequency clwin_yn clwnin_yn printer_yn sgs_yn it_mo it_dbds) statistic(fvpercent clwin_yn clwnin_yn printer_yn sgs_yn it_mo it_dbds)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[clwin_yn clwnin_yn printer_yn sgs_yn it_mo it_dbds]#result[col1], nformat(%6.0fc)
collect style cell var[clwin_yn clwnin_yn printer_yn sgs_yn it_mo it_dbds]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Information Systems Equipment & Resources")
putdocx collect
putdocx save Tables275.docx, append



******TRACKING OF TOOLS/SUPPLIES/JOBAIDS
****Tracking of Anthrop Equipment/tools
table (var) (site_region_label), statistic(fvfrequency track_anthro mitigate_anthro01 mitigate_anthro02 mitigate_anthro03 mitigate_anthro04 mitigate_anthro05 mitigate_anthro06) statistic(fvpercent track_anthro mitigate_anthro01 mitigate_anthro02 mitigate_anthro03 mitigate_anthro04 mitigate_anthro05 mitigate_anthro06)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[track_anthro mitigate_anthro01 mitigate_anthro02 mitigate_anthro03 mitigate_anthro04 mitigate_anthro05 mitigate_anthro06], nformat(%6.0fc)
collect style cell var[track_anthro mitigate_anthro01 mitigate_anthro02 mitigate_anthro03 mitigate_anthro04 mitigate_anthro05 mitigate_anthro06]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking of Anthrop Equipment/tools")
putdocx collect
putdocx save Tables275.docx, append


****Tracking of Job aids
table (var) (site_region_label), statistic(fvfrequency track_jaid mitigate_jaid01 mitigate_jaid02 mitigate_jaid03 mitigate_jaid04 mitigate_jaid05 mitigate_jaid06) statistic(fvpercent track_jaid mitigate_jaid01 mitigate_jaid02 mitigate_jaid03 mitigate_jaid04 mitigate_jaid05 mitigate_jaid06)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[track_jaid mitigate_jaid01 mitigate_jaid02 mitigate_jaid03 mitigate_jaid04 mitigate_jaid05 mitigate_jaid06], nformat(%6.0fc)
collect style cell var[track_jaid mitigate_jaid01 mitigate_jaid02 mitigate_jaid03 mitigate_jaid04 mitigate_jaid05 mitigate_jaid06]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking of Job Aids")
putdocx collect
putdocx save Tables275.docx, append


****Tracking of Supplies
table (var) (site_region_label), statistic(fvfrequency track_supp mitigate_supp01 mitigate_supp02 mitigate_supp03 mitigate_supp04 mitigate_supp05 mitigate_supp06) statistic(fvpercent track_supp mitigate_supp01 mitigate_supp02 mitigate_supp03 mitigate_supp04 mitigate_supp05 mitigate_supp06)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[track_supp mitigate_supp01 mitigate_supp02 mitigate_supp03 mitigate_supp04 mitigate_supp05 mitigate_supp06], nformat(%6.0fc)
collect style cell var[track_supp mitigate_supp01 mitigate_supp02 mitigate_supp03 mitigate_supp04 mitigate_supp05 mitigate_supp06]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking of Supplies")
putdocx collect
putdocx save Tables275.docx, append




****SBCC & HEPO
table (var) (site_region_label), statistic(fvfrequency sbcc_plan sbcc_imp sbcc_coor sbcc_eval hepo_met) statistic(fvpercent sbcc_plan sbcc_imp sbcc_coor sbcc_eval hepo_met)
collect recode result fvfrequency=col1 fvpercent=col2 mean=col1 sd=col2
collect layout (var) (site_region_label#result[col1 col2]) 
collect style cell var[sbcc_plan sbcc_imp sbcc_coor sbcc_eval hepo_met]#result[col1], nformat(%6.0fc)
collect style cell var[sbcc_plan sbcc_imp sbcc_coor sbcc_eval hepo_met]#result[col2], nformat(%6.1f) sformat(%s%%)
collect label dim site_region_label "Region", modify
collect style header result, level(hide)
collect style row stack, nobinder spacer
collect style cell, font(arial, size(10))

putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. SBCC PLAN & personnel")
putdocx collect
putdocx save Tables275.docx, append







***END




















