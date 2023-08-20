library("readxl")
#2.1
DFAS<-read_excel("C:\\Users\\sanjana\\OneDrive\\Desktop\\DOM207MINIPROJECT1-SANJANA ADITYA\\DOM207NEWSERVECLEAN.xlsx",sheet = "AMT SMOKER")
a=DFAS[["AMT SMOKER"]]
b=DFAS[["AMT NON SMOKER"]]
t.test(a, b, alternative = c("greater"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
DFPS<-read_excel("C:\\Users\\sanjana\\OneDrive\\Desktop\\DOM207MINIPROJECT1-SANJANA ADITYA\\DOM207NEWSERVECLEAN.xlsx",sheet = "PS SMOKER")
c=DFPS[["PS SMOKER"]]
d=DFPS[["PS NON SMOKER"]]
t.test(c, d, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
#2.2
DFPD<-read_excel("C:\\Users\\sanjana\\OneDrive\\Desktop\\DOM207MINIPROJECT1-SANJANA ADITYA\\DOM207NEWSERVECLEAN.xlsx",sheet = "PS DAY")
h=DFPD[["PS THURS"]]
i=DFPD[["PS FRI"]]
j=DFPD[["PS SAT"]]
k=DFPD[["PS SUN"]]
t.test(h,k, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
t.test(i,k, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
t.test(j, k, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
#2.3
DFAP<-read_excel("C:\\Users\\sanjana\\OneDrive\\Desktop\\DOM207MINIPROJECT1-SANJANA ADITYA\\DOM207NEWSERVECLEAN.xlsx",sheet = "AMT PS")
p=DFAP[["PS 1"]]
q=DFAP[["PS 2"]]
r=DFAP[["PS 3"]]
s=DFAP[["PS 4"]]
t.test(p,q, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
t.test(r,s, alternative = c("less"), mu = 0, paired = F, var.equal = T , conf.level = 0.95)
#2.4
DFAD1<-read_excel("C:\\Users\\sanjana\\OneDrive\\Desktop\\DOM207MINIPROJECT1-SANJANA ADITYA\\DOM207NEWSERVECLEAN.xlsx",sheet = "AMT DAY")
x=DFAD1[["AMT THUR"]]
y=DFAD1[["AMT FRI"]]
z=DFAD1[["AMT SAT"]]
w=DFAD1[["AMT SUN"]]
t.test(x,y, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
t.test(x,z, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)
t.test(x,w, alternative = c("less"), 
       mu = 0, paired = F, var.equal = T , conf.level = 0.95)

