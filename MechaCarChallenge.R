mechacar <- read.csv(file='mecha.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar)) #generate multiple linear regression model

#Note - MUST INSTALL fBasics Library for this to work
#it is commented out below in case it is already installed

#install.packages('fBasics')
#library(fBasics)

coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
basicStats(coil$PSI)


#test for normality
shapiro.test(coil$PSI)
#data is not normal, p less than .05, need to do log
shapiro.test(log10(coil$PSI))
#this data is still not normal

t.test(log10(coil$PSI),mu=log10(1500)) #compare sample versus population means
