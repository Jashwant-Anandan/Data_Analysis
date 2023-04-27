================= MOOC Cyber Security Course Analysis Report =================

Description:
============
The Project Template and Report Created is to Analyse the Data from MOOC dataset for the Future Learning website.
This Report Consist of two CRISP-DM cycles mentioned in the report as Primary and Secondary Analysis.
The Code used for data wrangling and analysis is done using R language in RStudio.
The Final Report is done using R Markdown.

Installing and Running the Project:
==================================
1. The Name of the Project Template folder is "mooc_course_analysis", this is the primary folder with all subfolders required for the project.
2. To start save "mooc_course_analysis" folder in a particular <Local Disk> in your PC.
3. Check the "<Local Disk>\mooc_course_analysis\data\" folder for all the data files used in the analysis and report generation.
4. Open the "<Local Disk>\mooc_course_analysis\config\global.dcf" file and make sure the following libraries are present in the libraries sub-heading.
   - libraries: reshape2, plyr, tidyverse, stringr, lubridate, dplyr, tidyr, tidyverse, knit
   - Make sure "load_libraries: TRUE" in the same global.dcf file
5. Go to the "<Local Disk>\mooc_course_analysis\munge\" folder and check if "01-A.R" and "02-A.R" files are present.
   - These are the data preprocessing files.
6. Set the working directory to the ".Rmd" file location i.e.,"<Local Disk>\mooc_course_analysis\reports\MOOC Course Analysis Report.Rmd"
7. Finally, Open the "<Local Disk>\mooc_course_analysis\reports\MOOC Course Analysis Report.Rmd" and Click on the "Knit" option to run the R Markdown file.
   - This file contains the whole report with all the code and output.
   - Running this file will give the output report as "MOOC-Course-Analysis-Report.pdf" file.

Further Contribution:
====================
Further Contribution can be done by adding new code or updating the existing "MOOC Course Analysis Report.Rmd" file for further analysis and using the "Knit" option.