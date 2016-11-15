############################
#
# Create plots
#
############################

library(foreign)
library(rdrobust)
library(plotrix)
library(xtable)

#############################
#
# Eggers et al data, look at vote share of strongest opponent of the reference party in many countries 
#
#############################

dataALL = read.dta("eggersetal-data.dta")
names(dataALL)
table(dataALL$country)


#################################
#
# CANADA
#
################################

data = dataALL[dataALL$country=="CANADA",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100

# Plot for paper
country = "Canada"
party   = "Liberal Party of Canada"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="Frequency",
      main="", axes=F, xlim=c(20,52), ylim=c(0,200),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,200,50), labels=paste(seq(0,200,50)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,150,p1,150,length=0.10)
text(x=30,y=150,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,100,p2,100,length=0.10)
text(x=30,y=100,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
legend("topleft","48.5 = Minimum value possible in perfect two-party system", col="blue", lty=2,lwd=2, cex=1.1, bg="white")
dev.off()

#################################
#
# GERMANY -- Bundestag
#
################################

data = dataALL[dataALL$country=="GERMANY" & dataALL$office == "BUNDESTAG",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100

# Plot for paper
country = "Germany-BD"
party   = "CDU/CSU"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="",
      main="", axes=F, xlim=c(20,52), ylim=c(0,80),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,300,20), labels=paste(seq(0,300,20)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,40,p1,40,length=0.10)
text(x=30,y=40,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,70,p2,70,length=0.10)
text(x=30,y=70,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
#text(x=35, y=81, paste(party,"'s Strongest Opponent",sep=""), cex=1.35, font=2)
dev.off()

#################################
#
# INDIA
#
################################

data = dataALL[dataALL$country=="INDIA",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100

# Plot for paper
country = "India"
party   = "Indian National Congress"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="Frequency",
      main="", axes=F, xlim=c(20,52), ylim=c(0,100),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,300,20), labels=paste(seq(0,300,20)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,63,p1,63,length=0.10)
text(x=30,y=63,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,43,p2,43,length=0.10)
text(x=30,y=43,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
dev.off()


#################################
#
# MEXICO
#
################################

data = dataALL[dataALL$country=="MEXICO",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100

# Plot for paper
country = "Mexico"
party   = "PRI"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="",
      main="", axes=F, xlim=c(20,52), ylim=c(0,300),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,300,50), labels=paste(seq(0,300,50)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,170,p1,170,length=0.10)
text(x=30,y=170,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,120,p2,120,length=0.10)
text(x=30,y=120,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
dev.off()


#################################
#
# NEW ZEALAND
#
################################

data = dataALL[dataALL$country=="NEW ZEALAND",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100

# Plot for paper
country = "NewZealand"
party   = "New Zealand National Party"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="",
      main="", axes=F, xlim=c(20,52), ylim=c(0,15),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,20,5), labels=paste(seq(0,20,5)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,14,p1,14,length=0.10)
text(x=30,y=14,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,11,p2,11,length=0.10)
text(x=30,y=11,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
dev.off()

#################################
#
# UK -- House of Commons 
#
################################

data = dataALL[dataALL$country=="UK" & dataALL$office=="HOUSE OF COMMONS",]
table(data$office)

summary(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3])
quantile(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3], prob=c(0.01,0.05,0.10,0.15,0.20,0.50,0.75,0.90), na.rm=TRUE)
p1 = 48.5
q1=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p1, na.rm=TRUE) * 100
p2 = 46
q2=mean(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3] < p2, na.rm=TRUE) * 100


# Plot for paper
country = "UK-HC"
party   = "Conservative Party"
pdf(paste("./hist-stronopp-",country,"-close.pdf",sep=""))
 hist(data$votesh_so[!is.na(data$votesh_so) & abs(data$rv)<3],
      xlab="Vote Share (%)", col="cyan", ylab="",
      main="", axes=F, xlim=c(20,52), ylim=c(0,150),breaks=22)
title(main=paste(party,"'s Strongest Opponent",sep=""), cex.main=1.6)
axis(side=1,at=c(20,25,30,35,40,p1,p2,50,52), labels=paste(c(20,25,30,35,40,p1,p2,50,52)))
axis(side=2,at=seq(0,1200,50), labels=paste(seq(0,1200,50)))
abline(v=p1, col="blue", lty=2,lwd=2)
arrows(35,130,p1,130,length=0.10)
text(x=30,y=130,labels=paste(round(q1,0),"th percentile", sep=""), cex=1.4)
abline(v=p2, col="red", lty=2,lwd=2)
arrows(35,110,p2,110,length=0.10)
text(x=30,y=110,labels=paste(round(q2,0),"th percentile", sep=""), cex=1.4)
dev.off()
