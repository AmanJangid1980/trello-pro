//
//  StringConstant.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import Foundation

//struct StringConstant {
////    static var shared = StringConstant()
//
//    //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,
//    static var selectedLanguage = UserDefaults.standard.value(forKey: "SelectedLanguege") as? String ?? "en"
//    static var START = "START".localizeString()
//    static var SKIP = "SKIP".localizeString()
//    static var launchTagLine: String { "Launch".localizeString() }
//    static var lower_wheel: String { "lower_wheel_en".localizeString() }
//    static let upper_wheel: String { "upper_wheel_en".localizeString() }
//    static var shortTagLine = "Medical Eligibility Criteria for Contraceptive Use".localizeString()
//    static var india_adapted_MEC = "India-adapted WHO MEC Wheel".localizeString()
//    static var aboutTheWheel = "About the Wheel".localizeString()
//    static var HowtoUsetheWheel = "How to Use the Wheel".localizeString()
//    static var EligibilityTool = "Eligibility Tool".localizeString()
//    static var ContraceptiveChoices = "Contraceptive Choices".localizeString()
//    static var Conditions = "Conditions".localizeString()
//    static var Preferences = "Preferences".localizeString()
//    static var AdditionalInfo = "Additional Info".localizeString()
//    static var Feedback = "Feedback".localizeString()
//    static var SelectLanguage = "Select Language".localizeString()
//    static var Search = "Search".localizeString()
//    static var guideTitle1 = "Select the medical condition or history that apply. More than one condition can be identified.".localizeString()
//    static var guideTitle2 = "Additional Info explains how to use the methods safely and effectively.".localizeString()
//    static var guideTitle3 = "The recommendations reflect the eligibility for contraceptive methods based on the condition(s) identified.".localizeString()
//    static var guideTitle4 = "This chart demonstrates the comparative efficacy with typical use of commonly used contraceptive methods.".localizeString()
//    static var about_description = "about_description".localizeString()
//    static var howtouse_1 = "howtouse_1".localizeString()
//    static var howtouse_2 = "howtouse_2".localizeString()
//    static var howtouse_3 = "howtouse_3".localizeString()
//    static var howtouse_4 = "howtouse_4".localizeString()
//    static var howtouse_5 = "howtouse_5".localizeString()
//    static var howtouse_6 = "howtouse_6".localizeString()
//
//    static var yes = "Yes".localizeString()
//    static var no = "No".localizeString()
//    
//    static var combinedHarmonalText = "combinedHarmonalText".localizeString()
//    
//    static var description = "Description".localizeString()
//    static var howItsWork = "How it works".localizeString()
//}
// MARK: - New Changes
struct StringConstant {

    static var selectedLanguage: String {
        return UserDefaults.standard.string(forKey: "SelectedLanguege") ?? "en"
    }

    static var START: String { "START".localizeString() }
    static var SKIP: String { "SKIP".localizeString() }
    static var launchTagLine: String { "Launch".localizeString() }
    static var lower_wheel: String { "lower_wheel_en".localizeString() }
    static var upper_wheel: String { "upper_wheel_en".localizeString() }
    static var shortTagLine: String { "Medical Eligibility Criteria for Contraceptive Use".localizeString() }
    static var india_adapted_MEC: String { "India-adapted WHO MEC Wheel".localizeString() }
    static var aboutTheWheel: String { "About the Wheel".localizeString() }
    static var HowtoUsetheWheel: String { "How to Use the Wheel".localizeString() }
    static var EligibilityTool: String { "Eligibility Tool".localizeString() }
    static var ContraceptiveChoices: String { "Contraceptive Choices".localizeString() }
    static var Conditions: String { "Conditions".localizeString() }
    static var Preferences: String { "Preferences".localizeString() }
    static var AdditionalInfo: String { "Additional Info".localizeString() }
    static var Feedback: String { "Feedback".localizeString() }
    static var SelectLanguage: String { "Select Language".localizeString() }
    static var Search: String { "Search".localizeString() }

    static var guideTitle1: String {
        "Select the medical condition or history that apply. More than one condition can be identified.".localizeString()
    }

    static var guideTitle2: String {
        "Additional Info explains how to use the methods safely and effectively.".localizeString()
    }

    static var guideTitle3: String {
        "The recommendations reflect the eligibility for contraceptive methods based on the condition(s) identified.".localizeString()
    }

    static var guideTitle4: String {
        "This chart demonstrates the comparative efficacy with typical use of commonly used contraceptive methods.".localizeString()
    }

    static var about_description: String { "about_description".localizeString() }
    static var howtouse_1: String { "howtouse_1".localizeString() }
    static var howtouse_2: String { "howtouse_2".localizeString() }
    static var howtouse_3: String { "howtouse_3".localizeString() }
    static var howtouse_4: String { "howtouse_4".localizeString() }
    static var howtouse_5: String { "howtouse_5".localizeString() }
    static var howtouse_6: String { "howtouse_6".localizeString() }

    static var yes: String { "Yes".localizeString() }
    static var no: String { "No".localizeString() }

    static var combinedHarmonalText: String { "combinedHarmonalText".localizeString() }

    static var description: String { "Description".localizeString() }
    static var howItsWork: String { "How it works".localizeString() }
}


struct ConditionProgressString {
    static var chc = "CHC".localizeString()
    static var combinepill = "Combined pills and combined injectables".localizeString()
    static var ageLess18 = "Age (Menarche to <18 Years)".localizeString()
}

struct ContraceptualChoicesString {
    static var title_1 = "Combined hormonal contraceptives".localizeString()
    static var issueName1_1_Regularbleeding = "Regular bleeding".localizeString()
    static var issueName2_1 = "Client controlled".localizeString()
    static var progressTitle_1 = "Effectiveness to prevent pregnancy".localizeString()
    static var desc_1 = "Daily pill, weekly patch, or monthly ring, containing two hormones (estrogen and progestogen).".localizeString()
    static var howItswork_1 = "Prevents the release of eggs from the ovaries (ovulation).".localizeString()
   
    static var title_2 = "Non-hormonal Contraceptives (Centchroman)".localizeString()
    static var issueName1_2 = "Weekly pill free from hormone and contains Ormeloxifene".localizeString()
    static var desc_2 = "It is a non-steroidal, non-hormonal once-a-week oral contraceptive pill.".localizeString()
    static var howItswork_2 = "Prevents implantation of blastocyst in endometrium by creating asynchrony between fertilized ovum and endometrial bed.".localizeString()
    static var progressValue_2 = "<strong>1–2 pregnancy</strong> per 100 women with perfect use".localizeString()
    
    static var title_3 = "Progestogen-only pills".localizeString()
    static var desc_3 = "Contains only progestogen hormone, not estrogen.".localizeString()
    static var howItswork_3 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation.".localizeString()
    
    static var title_4 = "Progestogen-only injectables".localizeString()
    static var issueName1_4_Privacy = "Privacy".localizeString()
    static var desc_4 = "Injected into the muscle or under the skin every 2 or 3 months, depending on the product.".localizeString()
    static var howItswork_4 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation.".localizeString()
    
    static var title_5 = "Implants (LNG/ETG)".localizeString()
    static var issueName1_5_HighlyEffective = "Highly effective".localizeString()
    static var issueName2_5_LongLasting = "Long Lasting".localizeString()
    static var desc_5 = "Small, flexible rods or capsules placed under the skin of the upper arm; contains progestogen hormone only.".localizeString()
    static var howItswork_5 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation.".localizeString()
    static var progressValue_5_G99 = ">99".localizeString()
    
    static var title_6 = "Levonorgestrel IUD".localizeString()
    static var desc_6 = "A T-shaped plastic device inserted into the uterus that steadily releases small amounts of levonorgestrel each day.".localizeString()
    static var howItswork_6 = "Thickens cervical mucous to block sperm and egg from meeting.".localizeString()
    
    static var title_7 = "Levonorgestrel IUD".localizeString()
    static var desc_7 = "A T-shaped plastic device inserted into the uterus that steadily releases small amounts of levonorgestrel each day.".localizeString()
    static var howItswork_7 = "Thickens cervical mucous to block sperm and egg from meeting.".localizeString()
    
    static var title_8 = "Copper intrauterine device".localizeString()
    static var issueName1_8_NoHormone = "No hormone".localizeString()
    static var desc_8 = "Small flexible plastic device containing copper sleeves or wire that is inserted into the uterus.".localizeString()
    static var howItswork_8 = "Copper component damages sperm and prevents it from meeting the egg.".localizeString()
    
    static var title_9 = "Barrier methods".localizeString()
    static var issueName1_9_STIprevention = "STI prevention".localizeString()
    static var howItswork_9 = "Forms a barrier to prevent sperm and egg from meeting.".localizeString()
    
    static var title_10 = "Lactational amenorrhea method".localizeString()
    static var dec_10 = "Small flexible plastic device containing copper sleeves or wire that is inserted into the uterus.".localizeString()
    static var howItswork_10 = "Copper component damages sperm and prevents it from meeting the egg.".localizeString()
    
    static var title_11 = "Female sterilization".localizeString()
    static var dec_11 = "Permanent contraception to block or cut the fallopian tubes.".localizeString()
    static var howItswork_11 = "Eggs are blocked from meeting sperm.".localizeString()
    
    static var dec_12 = "Permanent contraception to block or cut the vas deferens tubes that carry sperm from the testicles.".localizeString()
    static var howItswork_12 = "Keeps sperm out of ejaculated semen.".localizeString()
    
    static var ic_progestongen_detail = "ic_progestongen_detail".localizeString()
    static var ic_contraceptual_harmonal = "ic_contraceptual_harmonal".localizeString()
    static var ic_non_harmonal_contra = "ic_non_harmonal_contra".localizeString()
    static  let ic_progestogen_only = "ic_progestogen_only".localizeString()
    static var ic_bleeding = "ic_bleeding".localizeString()
    static var ic_client_control = "ic_client_control".localizeString()
    static var ic_combined_harmonal_detail = "ic_combined_harmonal_detail".localizeString()
    static var ic_no_harmones = "ic_no_harmones".localizeString()
    static var ic_implants = "ic_implants".localizeString()
    static var ic_highly_effective = "ic_highly_effective".localizeString()
    static var ic_long_lasting = "ic_long_lasting".localizeString()
    static var ic_uid = "ic_uid".localizeString()
    static var ic_privacy = "ic_privacy".localizeString()
    static var ic_copper = "ic_copper".localizeString()
    static var ic_copper_intrauterne_details = "ic_copper_intrauterne_details".localizeString()
    static var ic_barrier = "ic_barrier".localizeString()
    static var ic_sti_prevention = "ic_sti_prevention".localizeString()
    static var ic_amenorrhea = "ic_amenorrhea".localizeString()
    static var ic_lactational_amenorrhea_details = "ic_lactational_amenorrhea_details".localizeString()
    static var ic_female_sterialization = "ic_female_sterialization".localizeString()
    static var ic_female_sterialization_details = "ic_female_sterialization_details".localizeString()
    static var ic_male_steriallization = "ic_male_steriallization".localizeString()
    static var ic_male_sterialization_details = "ic_male_sterialization_details".localizeString()
}

struct ConditionsListString {
    static var listTitle1 = "Conditions that are Category 1 or 2 for All Methods (Method can be Used)".localizeString()
    static var listTitle2 = "Notes to the Conditions".localizeString()
    
    static var detailTitle1 = "Reproductive Conditions".localizeString()
    static var detailTitle2 = "Medical Conditions".localizeString()
    static var detailTitle3 = "Others".localizeString()
    static var detailTitle4 = "EC Pill".localizeString()
    
    static var detailDesc1_1 = "Benign breast disease or undiagnosed mass.".localizeString()
    static var detailDesc1_2 = "Benign ovarian tumours, including cysts.".localizeString()
    static var detailDesc1_3 = "Dysmenorrhoea.".localizeString()
    static var detailDesc1_4 = "Endometriosis.".localizeString()
    static var detailDesc1_5 = "History of gestational diabetes.".localizeString()
    static var detailDesc1_6 = "History of high blood pressure during pregnancy.".localizeString()
    static var detailDesc1_7 = "History of pelvic surgery, including caesarean delivery.".localizeString()
    static var detailDesc1_8 = "Past ectopic pregnancy.".localizeString()
    static var detailDesc1_9 = "Past pelvic inflammatory disease.".localizeString()
    static var detailDesc1_10 = "Post-abortion (no sepsis).".localizeString()
    static var detailDesc1_11 = "Postpartum ≥ 6 months.".localizeString()
    static var beforeDescrip1 = ""

    static var detailDesc2_1 = "Depression.".localizeString()
    static var detailDesc2_2 = "Epilepsy.".localizeString()
    static var detailDesc2_3 = "HIV asymptomatic or mild clinical disease (WHO Stage 1 or 2).".localizeString()
    static var detailDesc2_4 = "Iron-deficiency anaemia, sickle-cell disease and thalassaemia.".localizeString()
    static var detailDesc2_5 = "Malaria.".localizeString()
    static var detailDesc2_6 = "Mild cirrhosis.".localizeString()
    static var detailDesc2_7 = "Superficial venous disorders, including varicose veins.".localizeString()
    static var detailDesc2_8 = "Thyroid disorders.".localizeString()
    static var detailDesc2_9 = "Tuberculosis (non-pelvic).".localizeString()
    static var detailDesc2_10 = "Uncomplicated valvular heart disease.".localizeString()
    static var detailDesc2_11 = "Viral hepatitis (carrier or chronic).".localizeString()
    
    static var detailDesc3_1 = "Adolescents.".localizeString()
    static var detailDesc3_2 = "Breast cancer family history.".localizeString()
    static var detailDesc3_3 = "Venous thromboembolism (VTE) family history.".localizeString()
    static var detailDesc3_4 = "High risk for HIV.".localizeString()
    static var detailDesc3_5 = "Surgery without prolonged immobilization.".localizeString()
    static var detailDesc3_6 = "Taking antibiotics (excluding rifampicin/rifabutin).".localizeString()
    
    static var detailDesc4_1 = "EC pill is Category 1 for all physiological and medical conditions and Category 2 for women with h/o severe cardiovascular disease, migraine and severe liver disease.".localizeString()
    
    static var detailImg1 = "ic_reproductive_conditions".localizeString()
    static var detailImg2 = "ic_medical_condition".localizeString()
    static var detailImg3 = "ic_others".localizeString()
    static var detailImg4 = "ic_ecpill".localizeString()

    static var noteDesc_a = ">45 yrs = 2.".localizeString()
    static var noteDesc_b = "Can insert Cu IUCD and LNG-IUD <48 hours after delivery and during LSCS or ≥6 weeks after delivery.".localizeString()
    static var noteDesc_c = "Contraceptives like COCs & CICs, Centchroman, POPs, DMPA & NET-EN, Implants can be initiated on the day Misoprostol is given.".localizeString()
    static var noteDesc_d = "Cu IUCD and LNG-IUD to be inserted after ensuring the abortion is complete.".localizeString()
    static var noteDesc_e = "Current PID and Current STI (Purulent discharge): Cu IUCD and LNG-IUD = 4; if she develops these conditions while using Cu IUCD and LNG-IUD, give treatment and continue with the device.".localizeString()
    static var noteDesc_f = "If at increased risk of STI or HIV, advise condom use in addition to any other method.".localizeString()
    static var noteDesc_g = "If on ARV Therapy = 2, except ritonavir - boosted ARVs = 3.".localizeString()
    static var noteDesc_h = "If not receiving ARV treatment and not clinically well, Cu IUCD and LNG-IUD = 3.".localizeString()
    static var noteDesc_i = "COCs = 3; CICs = 2.".localizeString()
    static var noteDesc_j = "DMPA = 1; NET-EN = 2.".localizeString()
    static var noteDesc_k = "If pelvic TB, Cu IUCD and LNG-IUD = 4.".localizeString()
    static var noteDesc_l = "For Lamotrigine, POP and Implants = 1.".localizeString()
    static var noteDesc_m = "COCs and heavy smoking = 4; COCs and heavy smokers, <35 = 2; CICs and light smoking = 2.".localizeString()
    static var noteDesc_n = "For simple non migrainous headache most contraceptives can be safely used.".localizeString()
    static var noteDesc_o = "To check if migraine has aura, ask “Do you see a bright spot in your vision before bad headaches?” If condition developed while on POP DMPA, NET-EN, Implants, LNG-IUD, switch to non-hormonal method.".localizeString()
    static var noteDesc_p = "Migraine without aura and <35 yrs, COCs and CICs = 2; Migraine without aura and ≥35 yrs, COC and CIC = 3.".localizeString()
    static var noteDesc_q = "Multiple risk factors include: old age, smoking, hypertension, diabetes, obesity and known dyslipidemia. If stroke/IHD develops, while on POP, Implants, LNG-IUD (only IHD), change to non-hormonal method.".localizeString()
    static var noteDesc_r = "If established on anticoagulant therapy = 2.".localizeString()
    static var noteDesc_s = "If diabetes complicated or for more than 20 years: COCs, CICs, DMP and NET-EN = 3-4.".localizeString()
    static var noteDesc_t = "If uterine cavity is distorted/enlarged, cannot use Cu IUCD or LNG-IUD.".localizeString()
    static var noteDesc_u = "If ß hCG is persistently high or local malignant disease Cu IUCD and LNG-IUD = 4.".localizeString()
    static var noteDesc_v = "If not breastfeeding, LNG-IUD = Cat 1.".localizeString()
    static var noteDesc_w = "After 2nd trimester abortion, Cu IUCD and LNG-IUD = Cat 2. The provider should be skilled in PPIUCD technique.".localizeString()
    static var noteDesc_x = "Prophylactic antibiotics to be provided for Cu IUCD and LNG-IUD.".localizeString()
    static var noteDesc_y = "In mild cirrhosis, LNG-IUD = Cat 2.".localizeString()
    static var noteDesc_z = "In severe anemia, Cu IUCD = Cat 2.".localizeString()
}

struct AdditionalInfoString {
    static var listTitle1 = "Emergency Contraception".localizeString()
    static var listTitle2 = "Effectiveness of methods".localizeString()
    static var listTitle3 = "Antiretroviral medications and abbreviations".localizeString()
    
    static var listContent1 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    static var listContent2 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    static var listContent3 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    
    static var detailTitle_1 = "COC".localizeString()
    static var detailTitle_2 = "LNG".localizeString()
    static var detailTitle_3 = "UPA".localizeString()
    static var detailTitle_4 = "Cu-IUD".localizeString()
    
    static var detailSubTitle_1 = "Combined oral contraceptives".localizeString()
    static var detailSubTitle_2 = "Levonorgestrel".localizeString()
    static var detailSubTitle_3 = "Ulipristal acetate".localizeString()
    static var detailSubTitle_4 = "Copper intrauterine device".localizeString()
    
    static var detailDesPoint1_1 = "Pregnancy.".localizeString()
    static var detailDesPoint1_2 = "Breastfeeding.".localizeString()
    static var detailDesPoint1_3 = "Past ectopic pregnancy.".localizeString()
    static var detailDesPoint1_4 = "Obesity* (BMI ≥ 30 kg/m<sup><small><small>2</small></small></sup>).".localizeString()
    static var detailDesPoint1_5 = "History of severe cardiovascular disease, (ischaemic heart disease, cerebrovascular attack, or other thromboembolic conditions).".localizeString()
    static var detailDesPoint1_6 = "Migraine.".localizeString()
    static var detailDesPoint1_7 = "Severe liver disease (including jaundice).".localizeString()
    static var detailDesPoint1_8 = "CYP3A4 inducers (e.g. rifampicin, phenytoin, phenobarbital, carbamazepine, efavirenz, fosphenytoin, nevirapine, oxcarbazepine, primidone, rifabutin, St John’s wort/hypericum perforatum).".localizeString()
    static var detailDesPoint1_9 = "Repeated emergency contraceptive pill use.".localizeString()
    static var detailDesPoint1_10 = "Rape.".localizeString()
    
    static var detailDesVal1_1 = "NA".localizeString()
    static var detailDesVal1_2 = "1".localizeString()
    static var detailDesVal1_3 = "1".localizeString()
    static var detailDesVal1_4 = "1".localizeString()
    static var detailDesVal1_5 = "2".localizeString()
    static var detailDesVal1_6 = "2".localizeString()
    static var detailDesVal1_7 = "2".localizeString()
    static var detailDesVal1_8 = "1".localizeString()
    static var detailDesVal1_9 = "1".localizeString()
    static var detailDesVal1_10 = "1".localizeString()
    
    static var detailDesVal3_2 = "2".localizeString()
    
    static var detailDesPoint4_1_1 = "This method is highly effective for preventing pregnancy. It can be used within 5 days of unprotected intercourse as an emergency contraceptive. However, when the time of ovulation can be estimated, the Cu-IUD can be inserted beyond 5 days after intercourse, if necessary, as long as the insertion does not occur more than 5 days after ovulation.".localizeString()
    static var detailDesPoint4_1_2 = "The eligibility criteria for general Cu-IUD insertion also apply for the insertion of Cu-IUDs as emergency contraception.".localizeString()
    static var detailDesPoint4_2 = "Pregnancy.".localizeString()
    static var detailDesPoint4_3 = "Rape (high risk of STI).".localizeString()
    static var detailDesPoint4_4 = "Rape (low risk of STI).".localizeString()
    
    static var detailDesVal4_2 = "4".localizeString()
    static var detailDesVal4_3 = "3".localizeString()
    static var detailDesVal4_4 = "1".localizeString()
//
//    static var mainContent = "NA = not applicable<br><br>*Emergency contraceptive pills may be less effective among women with BMI ≥ 30 kg/m<sup><small><small>2</small></small></sup>&nbspthan among women with < 25 kg/m<sup><small><small>2</small></small></sup>.<br><br>Despite this, there are no safety concerns.".localizeString()
//    
    static var mainContent_1 = "NA = not applicable".localizeString()
    static var mainContent_2 = "*Emergency contraceptive pills may be less effective among women with BMI ≥ 30 kg/m<sup><small><small>2</small></small></sup>&nbspthan among women with < 25 kg/m<sup><small><small>2</small></small></sup>.".localizeString()
    static var mainContent_3 = "Despite this, there are no safety concerns.".localizeString()
}

struct Alphabet {
    static var a = "A" //.localizeString()
    static var b = "B" //.localizeString()
    static var c = "C" //.localizeString()
    static var d = "D" //.localizeString()
    static var e = "E" //.localizeString()
    static var f = "F" //.localizeString()
    static var g = "G" //.localizeString()
    static var h = "H" //.localizeString()
    static var i = "I" //.localizeString()
    static var j = "J" //.localizeString()
    static var k = "K" //.localizeString()
    static var l = "L" //.localizeString()
    static var m = "M" //.localizeString()
    static var n = "N" //.localizeString()
    static var o = "O" //.localizeString()
    static var p = "P" //.localizeString()
    static var q = "Q" //.localizeString()
    static var r = "R" //.localizeString()
    static var s = "S" //.localizeString()
    static var t = "T" //.localizeString()
    static var u = "U" //.localizeString()
    static var v = "V" //.localizeString()
    static var w = "W" //.localizeString()
    static var x = "X" //.localizeString()
    static var y = "Y" //.localizeString()
    static var z = "Z" //.localizeString()
}

struct EffectivenessString {
    static var title_1 = "Comparing Effectiveness of Family Planning Method".localizeString()
    static var title_2 = "Family Planning Method".localizeString()
    static var description = "(Numbers indicate % of women experiencing an unintended pregnancy during the first year of typical use of the method).".localizeString()
    
    static var image1_1 = "ic_implants_1".localizeString()
    static var image1_2 = "ic_female_sterialization_1".localizeString()
    static var image1_3 = "ic_iud_1".localizeString()
    static var image1_4 = "ic_vascetomy".localizeString()
    static var imageTitle1_1 = "Implants (LNG/ETG)".localizeString()
    static var imageTitle1_2 = "Female sterilization".localizeString()
    static var imageTitle1_3 = "IUD".localizeString()
    static var imageTitle1_4 = "Vasectomy".localizeString()
    static var content1_1_1 = "Implants, IUD, female sterilization".localizeString()
    static var content1_1_2 = "After procedure, little or nothing to do or remember.".localizeString()
    static var content1_2_1 = "Vasectomy".localizeString()
    static var content1_2_2 = "Use another method for first 3 months.".localizeString()

    static var image2_1 = "ic_injection_1".localizeString()
    static var image2_2 = "ic_patch_ring".localizeString()
    static var image2_3 = "ic_lam".localizeString()
    static var image2_4 = "ic_pills".localizeString()
    static var imageTitle2_1 = "Injectables".localizeString()
    static var imageTitle2_2 = "Patch & Vaginal ring".localizeString()
    static var imageTitle2_3 = "LAM".localizeString()
    static var imageTitle2_4 = "Pills".localizeString()
    
    static var content2_1_1 = "Injectables".localizeString()
    static var content2_1_2 = "Get repeat injections on time.".localizeString()
    static var content2_2_1 = "Lactational amenorrhea method, LAM (for 6 months): The baby is fully or near fully breastfed.".localizeString()
    static var content2_2_2 = "To maintain effective protection against pregnancy, another method of contraception must be used as soon as menstruation resumes, the frequency or duration of breast-feeds is reduced, bottle feeds are introduced or the baby reaches 6 months of age.".localizeString()
    static var content2_3 = "Pills: Take a hormonal pill daily and non-hormonal pills weekly (as scheduled).".localizeString()
    static var content2_4 = "Patch, ring: Keep in place, change on time.".localizeString()
    
    static var image3_1 = "ic_male_cond".localizeString()
    static var image3_2 = "ic_female_cond".localizeString()
    static var image3_3 = "ic_diaphgram".localizeString()
    static var image3_4 = "ic_fertilities_awarness".localizeString()
    static var imageTitle3_1 = "Male condoms".localizeString()
    static var imageTitle3_2 = "Female condoms".localizeString()
    static var imageTitle3_3 = "Diaphragm".localizeString()
    static var imageTitle3_4 = "Fertility awareness methods".localizeString()
    static var content3_1 = "Condoms, diaphragm: Use correctly every time you have sex.".localizeString()
    static var content3_2 = "Fertility awareness methods: Abstain from sex or use condoms on fertile days. The Standard Days Method or Two Day Method can also be used.".localizeString()
    
    static var image4_1 = "ic_withdrawal".localizeString()
    static var image4_2 = "ic_spermicide".localizeString()
    static var imageTitle4_1 = "Withdrawal".localizeString()
    static var imageTitle4_2 = "Spermicides".localizeString()

    static var content4_1_1 = "Withdrawal, spermicides:".localizeString()
    static var content4_1_2 = "Use correctly every time you have sex.".localizeString()
    static var content4_1_3 = "Numbers in parentheses indicate % of women experiencing an unintended pregnancy during the first year of typical use of contraception. Source: Trussell J., 2011.".localizeString()
    static var content4_1_4 = "Numbers indicate % of women experiencing an unintended pregnancy during the first year of typical use of the method.".localizeString()
}

struct AntiretroviralString {
    static var title1 = "Nucleoside reverse transcriptase inhibitors (NRTIs)".localizeString()
    static var title2 = "Non-nucleosides reverse transcriptase inhibitors (NNRTIs)".localizeString()
    static var title3 = "Protease inhibitors (PIs)".localizeString()
    static var title4 = "Integrase inhibitors".localizeString()

    static var point1_1 = "ABC".localizeString()
    static var point1_2 = "TDF".localizeString()
    static var point1_3 = "AZT".localizeString()
    static var point1_4 = "3TC".localizeString()
    static var point1_5 = "DDI".localizeString()
    static var point1_6 = "FTC".localizeString()
    static var point1_7 = "D4T".localizeString()
    
    static var value1_1 = "Abacavir".localizeString()
    static var value1_2 = "Tenofovir".localizeString()
    static var value1_3 = "Zidovudine".localizeString()
    static var value1_4 = "Lamivudine".localizeString()
    static var value1_5 = "Didanosine".localizeString()
    static var value1_6 = "Emtricitabine".localizeString()
    static var value1_7 = "Stavudine".localizeString()
    
    static var point2_1 = "EFV".localizeString()
    static var point2_2 = "ETR".localizeString()
    static var point2_3 = "NVP".localizeString()
    static var point2_4 = "RPV".localizeString()
    
    static var value2_1 = "Efavirenz".localizeString()
    static var value2_2 = "Etravirine".localizeString()
    static var value2_3 = "Nevirapine".localizeString()
    static var value2_4 = "Rilpirivine".localizeString()

    static var point3_1 = "ATV/r".localizeString()
    static var point3_2 = "LPV/r".localizeString()
    static var point3_3 = "DRV/r".localizeString()
    static var point3_4 = "RTV".localizeString()
    
    static var value3_1 = "Ritonavir-boosted atazanavir".localizeString()
    static var value3_2 = "Ritonavir-boosted lopinavir".localizeString()
    static var value3_3 = "Ritonavir-boosted darunavir".localizeString()
    static var value3_4 = "Ritonavir".localizeString()
    
    static var point4_1 = "RAL".localizeString()
    
    static var value4_1 = "Raltegravir".localizeString()
}

struct LanguageName {
    static var Assamese = "অসমীয়া"
    static var Bengali = "বাংলা"
    static var English = "English"
    static var Gujarati = "ગુજરાતી"
    static var Hindi = "हिंदी"
    static var Kannada = "ಕನ್ನಡ"
    static var Malayalam = "മലയാളം"
    static var Odia_Oriya = "ଓଡିଆ"
    static var Punjabi = "ਪੰਜਾਬੀ"
    static var Tamil = "தமிழ்"
    static var Telugu = "తెలుగు"
}


struct LanguageCode {
    static var Assamese = "as-IN"
    static var Bengali = "bn-IN"
    static var English = "en"
    static var Gujarati = "gu-IN"
    static var Hindi = "hi"
    static var Kannada = "kn-IN"
    static var Malayalam = "ml-IN"
    static var Odia_Oriya = "or-IN"
    static var Punjabi = "pa-IN"
    static var Tamil = "ta-IN"
    static var Telugu = "te-IN"
}
