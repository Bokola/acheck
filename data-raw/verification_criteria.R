## code to prepare `verification_criteria` dataset goes here
# clear workspace or load required packages
library(tibble)

# instantiate the target table framework
verification_criteria <- tibble::tibble(
  Criteria = c(
    "Physiological vulnerability",
    "Physiological vulnerability",
    "Physiological vulnerability",
    "Physiological vulnerability",
    "Physiological vulnerability",
    "Physiological vulnerability",
    "Social vulnerability",
    "Social vulnerability",
    "Social vulnerability",
    "Social vulnerability",
    "Social vulnerability",
    "Nutritional vulnerability",
    "Nutritional vulnerability",
    "Nutritional vulnerability",
    "High level of poverty (lack of income and/or asset)",
    "Food security vulnerability",
    "Food security vulnerability"
  ),
  Indicator = c(
    "% of HHs with Pregnant women at the time of data collection",
    "% of HHs with lactating women at the time of data collection",
    "% of HHs with members living with disability at the time of data collection",
    "% of HHs with members with chronic illness at the time of data collection",
    "% of HHs with members aged above 59 years at the time of data collection",
    "% of HHs with more than 6 members at the time of data collection",
    "% of HHs with female head of HHs at the time of data collection",
    "% of HHs with head of HHs aged below 18 years or above 59 years at the time of data collection",
    "% of HHs with head of HH living with chronic illness at the time of data collection",
    "% of HHs with Unaccompanied or separated children at the time of data collection",
    "% of HHs that perceived being marginalized from the rest of the community at the time of data collection",
    "% of HHs with children aged below 5 years enrolled in OTP or SFP program at the time of data collection",
    "% of HHs with pregnant women enrolled in OTP or SFP program at the time of data collection",
    "% of HHs with lactating women enrolled in OTP or SFP program at the time of data collection",
    "The average monthly income received at the time of data collection",
    "% of HHs with poor or borderline FCS at the time of data collection",
    "% of HHs using stress, crisis or emergency level livelihood coping strategies at the time of data collection"
  )
)

# save object as exported package data promise configuration
usethis::use_data(verification_criteria, overwrite = TRUE)

usethis::use_data(verification_criteria, overwrite = TRUE)
