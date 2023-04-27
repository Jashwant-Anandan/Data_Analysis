# Preprocessing script for CRISP DM Cycle 1 -- Enrollment Data.

#Appending different .csv files into single Dataframe.
enrolments <- rbind(cyber.security.3_enrolments, cyber.security.4_enrolments,
                    cyber.security.5_enrolments, cyber.security.6_enrolments,
                    cyber.security.7_enrolments)

# Removing Unwanted columns
enrolments_main = subset(enrolments, select = -c(learner_id, unenrolled_at,
                                            fully_participated_at,
                                            purchased_statement_at, country,
                                            role, gender, age_range))

# Change row value in country column from -- to Not Available
enrolments_main <- enrolments_main %>%
  mutate(detected_country = replace(detected_country, detected_country == "--", "Not Available"))

# Change Datatype to Date
enrolments_main$enrolled_at <- as.Date(enrolments_main$enrolled_at)