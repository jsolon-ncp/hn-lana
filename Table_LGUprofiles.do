***use BARMM_dataset_08May2024.dta

***Generate Tables for LGU profiles

** UPI
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Upi")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8713, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8713,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8713,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8713,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8713,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8713,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Upi")
putdocx collect
putdocx save LGUprofile.docx, append




** DATU SALIBO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8808, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8808,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8808,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8808,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8808,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8808,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Salibo")
putdocx collect
putdocx save LGUprofile.docx, append



** DATU ANGGAL MIDTIMBANG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8804, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8804,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8804,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8804,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8804,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8804,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Anggal Midtimbang")
putdocx collect
putdocx save LGUprofile.docx, append



** DATU ABDULLAH SANGKI
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8803, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8803,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append






** DATU ABDULLAH SANGKI
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8803, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8803,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8803,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8803,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Abdullah Sangki")
putdocx collect
putdocx save LGUprofile.docx, append



** AMPATUAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8801, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8801,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8801,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8801,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8801,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8801,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Ampatuan")
putdocx collect
putdocx save LGUprofile.docx, append



** MAMASAPANO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8813, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8813,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8813,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8813,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8813,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8813,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Mamasapano")
putdocx collect
putdocx save LGUprofile.docx, append





*BARIRA
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Barira")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8701, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8701,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8701,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8701,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8701,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Barira")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8701,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Barira")
putdocx collect
putdocx save LGUprofile.docx, append






*BULDON
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Buldon")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8702, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8702,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8702,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8702,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8702,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8702,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Buldon")
putdocx collect
putdocx save LGUprofile.docx, append





*PARANG, MAGUINDANAO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8709, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8709,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8709,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8709,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8709,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8709,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Parang,MDN")
putdocx collect
putdocx save LGUprofile.docx, append






*MATANOG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Matanog")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8707, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8707,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8707,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8707,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8707,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8707,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Matanog")
putdocx collect
putdocx save LGUprofile.docx, append







*MANGUDADATU
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8814, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8814,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8814,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8814,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8814,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8814,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Mangudadatu")
putdocx collect
putdocx save LGUprofile.docx, append





*DATU PAGLAS
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8806, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8806,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8806,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8806,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8806,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8806,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Paglas")
putdocx collect
putdocx save LGUprofile.docx, append






*PAGALUNGAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8816, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8816,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8816,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8816,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8816,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8816,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Pagalungan")
putdocx collect
putdocx save LGUprofile.docx, append







*GSK PENDATUN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8811, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8811,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8811,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8811,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8811,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8811,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Gen SK Pendatun")
putdocx collect
putdocx save LGUprofile.docx, append






*PAGLAT
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Paglat")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8817, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8817,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8817,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8817,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8817,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8817,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Paglat")
putdocx collect
putdocx save LGUprofile.docx, append







*DATU BLAH SINSUAT
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8704, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8704,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8704,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8704,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8704,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8704,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Datu Blah Sinsuat")
putdocx collect
putdocx save LGUprofile.docx, append






*SOUTH UPI
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_South Upi")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==8822, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==8822,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==8822,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==8822,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==8822,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==8822,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_South Upi")
putdocx collect
putdocx save LGUprofile.docx, append




******SULU
*JOLO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Jolo")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6602, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6602,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6602,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6602,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6602,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6602,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Jolo")
putdocx collect
putdocx save LGUprofile.docx, append






*INDANAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Indanan")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6601, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6601,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6601,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6601,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6601,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6601,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Indanan")
putdocx collect
putdocx save LGUprofile.docx, append






*PARANG,SULU
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6609, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6609,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6609,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6609,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6609,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6609,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Parang,Sulu")
putdocx collect
putdocx save LGUprofile.docx, append







*MAIMBUNG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6605, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6605,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6605,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6605,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6605,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6605,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Maimbung")
putdocx collect
putdocx save LGUprofile.docx, append






*PANGLIMA ESTINO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6616, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6616,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Panglima Estino")
putdocx collect
putdocx save LGUprofile.docx, append






*PATIKUL
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Patikul")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6611, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6611,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6611,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6611,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6611,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6611,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Patikul")
putdocx collect
putdocx save LGUprofile.docx, append







*HADJI PANGLIMA TAHIL
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6606, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6606,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6606,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6606,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6606,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6606,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Hadji Panglima Tahil")
putdocx collect
putdocx save LGUprofile.docx, append





*PANGUTARAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6608, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6608,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6608,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6608,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6608,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6608,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Pangutaran")
putdocx collect
putdocx save LGUprofile.docx, append






*TAPUL
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Tapul")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==6614, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==6614,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==6614,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==6614,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==6614,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append


***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==6614,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Tapul")
putdocx collect
putdocx save LGUprofile.docx, append





*******LANAO DEL SUR
*MARAWI CITY
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3617, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3617,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3617,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3617,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3617,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3617,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Marawi City")
putdocx collect
putdocx save LGUprofile.docx, append






*BALINDONG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Balindong")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3603, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3603,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3603,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3603,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3603,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3603,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Balindong")
putdocx collect
putdocx save LGUprofile.docx, append






*MARANTAO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Marantao")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3616, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3616,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3616,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3616,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Marantao")
putdocx collect
putdocx save LGUprofile.docx, append





*DITSAAN-RAMAIN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3624, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3624,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3624,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3624,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3624,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3624,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Ditsaan-Ramain")
putdocx collect
putdocx save LGUprofile.docx, append





*SAGUIARAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3625, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3625,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3625,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3625,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3625,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3625,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Saguiaran")
putdocx collect
putdocx save LGUprofile.docx, append






*CALANOGAS
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3632, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3632,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3632,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3632,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3632,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3632,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Calanogas")
putdocx collect
putdocx save LGUprofile.docx, append








*PUALAS
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Pualas")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3623, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3623,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3623,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3623,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3623,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3623,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Pualas")
putdocx collect
putdocx save LGUprofile.docx, append








*KAPATAGAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3639, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3639,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3639,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3639,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3639,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3639,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Kapatagan")
putdocx collect
putdocx save LGUprofile.docx, append






*MALABANG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Malabang")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3615, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3615,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3615,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3615,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3615,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3615,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Malabang")
putdocx collect
putdocx save LGUprofile.docx, append






*POONA BAYABAO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3622, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3622,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3622,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3622,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3622,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3622,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Poona Bayabao")
putdocx collect
putdocx save LGUprofile.docx, append








*TAMPARAN
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3626, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3626,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3626,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3626,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3626,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Tamparan")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3626,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Tamparan")
putdocx save LGUprofile.docx, append





*TARAKA
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Taraka")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3627, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3627,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3627,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3627,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3626,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Taraka")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3627,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Taraka")
putdocx save LGUprofile.docx, append






*AMAI MANABILANG
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3637, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3637,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3637,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3637,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3637,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Amai Manabilang")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3637,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Amai Manabilang")
putdocx save LGUprofile.docx, append







*WAO
****demographic & socio-economic
dtable i.income_class brgy_num brgy_isla_num brgy_mount_num brgy_gida_num brgy_hrisk_num hf_rhu hf_birth hf_bhs hf_dcc opt_a1_2023 opt_b1_2023 opt_c1_2023 opt_d1_2023 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Demographic, Socio-economic and Nutritional Status_Wao")
putdocx collect
putdocx save LGUprofile.docx, replace

dtable i.income_src01 i.income_src02 i.income_src03 i.income_src04 i.income_src05 i.income_src77 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Primary Sources of Income(Multiple answers)_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable poverty_inc opt_e2_2023 opt_a2_2023 opt_b2_2023 opt_c2_2023 if site_id==3630, nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Demographic, Socio-economic and Nutritional Status_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-specific indicators
dtable hn_a1_2023 hn_b1_2023 hn_e1_2023 hn_f1_2023 hn_g1_2023 msup_a1_2023 msup_b1_2023 msup_d1_2023 msup_c1_2023 msup_f1_2023 msup_e1_2023 hn_h1_2023 hn_i1_2023 hn_j1_2023 hn_d1_2023 hn_k1_2023 hn_c1_2023 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hn_a3_2023 hn_e3_2023 hn_f3_2023 hn_i3_2023 hn_j3_2023 hn_d3_2023 if site_id==3630,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages Coverage Status of Nutrition-Specific Programmes_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable iycf_b1_2023 iycf_c1_2023 iycf_a1_2023 msup_i11_2023 msup_i21_2023 msup_h11_2023 msup_h21_2023 pimam_a1_2023 pimam_a11_2023 pimam_a21_2023 pimam_a31_2023 pimam_a41_2023 pimam_a51_2023 pimam_b1_2023 pimam_b11_2023 pimam_b21_2023 pimam_b31_2023 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Specific Programmes_IYCF continuation_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

****nutrition-sensitive indicators
dtable wash_a1_2023 wash_a11_2023 wash_a21_2023 wash_a31_2023 wash_b1_2023 wash_c1_2023 wash_d1_2023 wash_d11_2023 wash_d21_2023 wash_d31_2023 wash_e1_2023 eccd_a1_2023 eccd_b1_2023 eccd_c1_2023 pop_k2023 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number Coverage Status of Nutrition-Sensitive Programmes_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***number HRH & trainings
dtable hrh_a_regular hrh_a_contractual hrh_a_total hrh_b_regular hrh_b_contractual hrh_b_total hrh_c_regular hrh_c_contractual hrh_c_total hrh_d_regular hrh_d_contractual hrh_d_total hrh_e_regular hrh_e_contractual hrh_e_total hrh_f_regular hrh_f_contractual hrh_f_total hrh_g_total hrh_h_total_bns i.nao_npc_yn i.nao_fulltime i.npc_fulltime i.nao_under i.npc_under hrh_j hrh_i hrh_k hrh_l hrh_n if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of HSPs & CHWs_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hrh_trained_pimam hrh_trained_cgs hrh_trained_iycf hrh_trained_niem hrh_trained_imci hrh_trained_opt hrh_trained_fhsis hrh_trained_sbcc chw_trained_bhw chw_trained_bns chw_trained_snf chw_trained_mch chw_trained_anth chw_trained_niem chw_trained_sbcc if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Trained HSPs & CHWs_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hsp_percent_pimamtrained hsp_percent_cgstrained hsp_percent_iycftrained hsp_percent_niemtrained hsp_percent_imcitrained hsp_percent_opttrained hsp_percent_fhsistrained hsp_percent_sbcctrained chw_percent_bhwtrained chw_percent_bnstrained chw_percent_snftrained chw_percent_mchtrained chw_percent_anthtrained chw_percent_niemtrained chw_percent_sbcctrained if site_id==3630,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages of Trained HSPs & CHWs_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***equipment & supplies
dtable wt_adult_qty2 wt_child_qty2 ht_adult_qty2 ht_child_qty2 muac_child_qty2 muac_adult_qty2 i.hscale_fxn i.dscale_fxn i.lboard_fxn i.hboard_fxn i.muac_fxn if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Equipment (Completeness of equipment & functionality)_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_yn va_qty_100 va_qty_200 i.mnp_yn mnp_qty i.ifa_yn ifa_qty i.dwm_yn dwm_qty i.mms_yn mms_qty i.rutf_yn rutf_qty i.rusf_yn rusf_qty i.bfkit_yn bfkit_qty i.cgs_yn cgs_qty i.wtchrt_yn wtchrt_qty i.pgbk_yn pgbk_qty i.iycfcrd_yn iycfcrd_qty i.pgpny_yn pgpny_qty i.ngmf_yn ngmf_qty if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Number of Supplies & Job aids (Health & Nutrition Commodities & Job aids)_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.va_src01 i.va_src02 i.va_src03 i.va_src04 i.va_src05 i.va_src_oth i.mnp_src01 i.mnp_src02 i.mnp_src03 i.mnp_src04 i.mnp_src05 i.mnp_src_oth i.ifa_src01 i.ifa_src02 i.ifa_src03 i.ifa_src04 i.ifa_src05 i.ifa_src_oth i.dwm_src01 i.dwm_src02 i.dwm_src03 i.dwm_src04 i.dwm_src05 i.dwm_src_oth i.mms_src01 i.mms_src02 i.mms_src03 i.mms_src04 i.mms_src05 i.mms_src_oth i.rutf_src01 i.rutf_src02 i.rutf_src03 i.rutf_src04 i.rutf_src05 i.rutf_src_oth i.rusf_src01 i.rusf_src02 i.rusf_src03 i.rusf_src04 i.rusf_src05 i.rusf_src_oth i.bfkit_src01 i.bfkit_src02 i.bfkit_src03 i.bfkit_src04 i.bfkit_src05 i.bfkit_src77 i.cgs_src01 i.cgs_src02 i.cgs_src03 i.cgs_src04 i.cgs_src05 i.cgs_src77 i.wtchrt_src01 i.wtchrt_src02 i.wtchrt_src03 i.wtchrt_src04 i.wtchrt_src05 i.wtchrt_src_oth i.pgbk_src01 i.pgbk_src02 i.pgbk_src03 i.pgbk_src04 i.pgbk_src05 i.pgbk_src77 i.iycfcrd_src01 i.iycfcrd_src02 i.iycfcrd_src03 i.iycfcrd_src04 i.iycfcrd_src05 i.iycfcrd_src_oth i.pgpny_src01 i.pgpny_src02 i.pgpny_src03 i.pgpny_src04 i.pgpny_src05 i.pgpny_src77 i.ngmf_src01 i.ngmf_src02 i.ngmf_src03 i.ngmf_src04 i.ngmf_src05 i.ngmf_src_oth if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Sources (Multiple answers) of Commodities & Supplies & Job aids_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.track_anthro i.mitigate_anthro01 i.mitigate_anthro02 i.mitigate_anthro03 i.mitigate_anthro04 i.mitigate_anthro05 i.mitigate_anthro06 i.mitigate_anthro77 i.track_supp i.mitigate_supp01 i.mitigate_supp02 i.mitigate_supp03 i.mitigate_supp04 i.mitigate_supp05 i.mitigate_supp06 i.mitigate_supp77 i.track_jaid i.mitigate_jaid01 i.mitigate_jaid02 i.mitigate_jaid03 i.mitigate_jaid04 i.mitigate_jaid05 i.mitigate_jaid06 i.mitigate_jaid77 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Tracking (& Mitigation strategies) of Nutrition-related supplies & equipment_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***data information systems
dtable i.fhsis_present i.fhsis_uses01 i.fhsis_uses02 i.fhsis_uses03 i.fhsis_uses04 i.fhsis_uses05 i.fhsis_uses06 i.fhsis_uses07 i.opt_present i.opt_uses01 i.opt_uses02 i.opt_uses03 i.opt_uses04 i.opt_uses05 i.opt_uses06 i.opt_uses07 i.mellpi_present i.mellpi_uses01 i.mellpi_uses02 i.mellpi_uses03 i.mellpi_uses04 i.mellpi_uses05 i.mellpi_uses06 i.mellpi_uses07 i.iclinicsys_present i.iclinicsys_uses01 i.iclinicsys_uses02 i.iclinicsys_uses03 i.iclinicsys_uses04 i.iclinicsys_uses05 i.iclinicsys_uses06 i.iclinicsys_uses07 i.wah_present i.wah_uses01 i.wah_uses02 i.wah_uses03 i.wah_uses04 i.wah_uses05 i.wah_uses06 i.wah_uses07 i.ek_present i.ek_uses01 i.ek_uses02 i.ek_uses03 i.ek_uses04 i.ek_uses05 i.ek_uses06 i.ek_uses07 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Presence of Nutrition-related Information Systems_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***enabling environment
dtable i.lnc_yn i.lnc_stat i.lnc_function i.lnap i.lnap1_reso i.lnap2_reso i.lnc_marginalized i.lnc_participation01 i.lnc_participation02 i.lnc_participation03 i.lnc_participation04 i.lnc_participation05 i.lnc_participation06 i.lnc_participation07 i.lnc_participation08 i.lnc_participation09 i.lnc_participation10 i.lnc_participation77  if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Leadership & Governance_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable ppa1_ave ppa2_ave if site_id==3630,  nformat(%6.1f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages PPAs_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable i.res_a i.res_b i.res_c i.res_d i.res_e i.res_h i.res_i i.res_j i.res_k i.res_l i.res_n i.res_o i.res_m i.res_f i.res_g reso_num_nsrc if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Issuance/Adoption of Health & Nutrition Policies and Resolutions_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***financing for nutrition 
dtable i.hnbudget_src01 i.hnbudget_src02 i.hnbudget_src03 i.hnbudget_src04 i.hnbudget_src05 i.hnbudget_src77 hnbudget_amnt lgubudget_amnt if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Financing for Health & Nutrition Programs_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

dtable hnbudget_percent if site_id==3630,  nformat(%6.2f) sformat(%s%%)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Percentages LGU budget allocation for health and nutrition_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***community engagement & sbcc
dtable i.sbcc_plan i.sbcc_imp i.sbcc_coor i.sbcc_eval i.sbcc_mats i.sbcc_mats_type01 i.sbcc_mats_type02 i.sbcc_mats_type03 i.sbcc_mats_type04 i.sbcc_mats_type05 i.sbcc_mats_type06 i.sbcc_mats_type77 i.sbcc_mats_sample01 i.sbcc_mats_sample02 i.sbcc_mats_sample03 i.sbcc_mats_sample04 i.sbcc_mats_sample05 i.sbcc_mats_sample06 i.sbcc_person sbcc_person_num i.sbcc_person_turnover i.person_trained i.person_train_who03 i.person_train_who04 i.person_train_who77 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Community Engagement & SBCC_Wao")
putdocx collect
putdocx save LGUprofile.docx, append

***stakeholder partnership
dtable i.cso_yn cso_num i.cso_focus01 i.cso_focus02 i.cso_focus03 i.cso_focus04 i.cso_focus05 i.cso_focus06 i.cso_focus07 i.cso_focus08 i.cso_focus09 i.cso_focus10 i.cso_focus11 i.cso_focus12 i.cso_focus13 i.cso_focus77 i.cso_niem01 i.cso_niem02 i.cso_niem03 i.cso_niem04 i.cso_niem05 i.cso_niem06 i.cso_niem07 i.cso_niem77 if site_id==3630,  nformat(%6.0fc)
putdocx begin
collect style putdocx, layout(autofitcontents) ///
title("Table ##. Stakeholders & Partnerships_Wao")
putdocx save LGUprofile.docx, append


