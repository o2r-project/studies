# create qcodes project

#install.packages("devtools")
#devtools::install_github("ropenscilabs/qcoder")
library(qcoder)


#create_qcoder_project("Reviews_Analyses_project", sample = TRUE)
import_project_data(project = "Reviews_Analyses_project")
#install.packages("textreadr")
library(textreadr)


#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#Test

#install.packages("devtools")
devtools::install_github("ropenscilabs/qcoder")
library(qcoder)
create_qcoder_project("test_qcoder_project", sample = TRUE)
import_project_data(project = "test_qcoder_project")
qcode()

getwd()

#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#Define coding 


codes=data.frame(matrix(ncol=3, nrow=6))
colnames(codes)=c("code_id", "code", "code.description")
codes[,1]=c(1:6)
codes[,2]=c("Links", "Reproducibility", "Figure", "Data", "Parameter", "License")
codes[,3]=c("Links to code and data cannot be opened",
           "The analysis is not understandable and not reproducible",
           "Figures cannot be fully understood",
           "Data are missing or certain information about data are missing",
           "Parameters cannot be fully understood or futher information would be helpful",
           "Licensing information is missing")
codes$code_id=as.numeric(codes$code_id)
setwd("C:/Users/Laura/Desktop/o2r/projects/studies/reviewstudy/Reviews_Analyses_project/codes")
getwd()
write.csv(codes, "codes.csv", row.names=F)



#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#qcode


qcode()
