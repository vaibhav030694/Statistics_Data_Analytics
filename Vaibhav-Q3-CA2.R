#q3
# Expected Frequency 
450*400/1000
450*600/1000
450*400/1000
450*600/1000
100*400/1000
100*600/1000

x=matrix(c(200,250,150,300,50,50), ncol=3)
x
#[,1] [,2] [,3]
#[1,]  200  150   50
#[2,]  250  300   50

#Test Statistic
chisq.test(x,correct=FALSE)
#X-squared = 16.204, df = 2, p-value = 0.000303

#Critical Value
qchisq(1-0.05,2) #5.991465