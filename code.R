#################################################################################
########                     Student comfort Analysis            ################
#################################################################################
#: Project By: Shashank G S
#################################################################################


# The data from about 160 people has been collected via Google forms and only the required data has
# been extracted. 


df<-read.csv("C:/Users/india/Downloads/survey.csv")
#write the source address of the csv file above
#View(df)
summary(df)

# There is a outlier in dist variable which we can remove by quartile deviation as shown

uv=3*quantile(df$dist_frm_clg,.413)
df$dist_frm_clg[df$dist_frm_clg>uv]<-uv
summary(df)

######################################

# we use library dummies for other indicator variables

install.packages("dummies")
library(dummies)
df<-dummy.data.frame(df)

df<-df[,-7]
summary(df)

multiplemodal<-lm(comfort_rating~.,data = df)
summary(multiplemodal)
abline(multiplemodal)

