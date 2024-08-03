read.table(file="D1_H1.txt",header=F)->D1H1
read.table(file="D1_H2.txt",header=F)->D1H2
read.table(file="D2_H1.txt",header=F)->D2H1
read.table(file="D2_H2.txt",header=F)->D2H2
read.table(file="other_RG.txt",header=F)->OR
read.table(file="allreads.txt",header=F)->AR
read.table(file="IlluminaReads.txt",header=F)->IR

tiff("BWA_Read_Coverage.tiff",width = 2980, height = 3080, res = 170)
par(mfrow=c(7,1))
par(mar=c(5,5,4,1)) 
plot(D1H1$V2,D1H1$V4,xlim=c(10500000,11600001),type="b",col="red",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",main="Dup1 Hap 1 ONT reads",cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(D1H2$V2,D1H2$V4,type="b",col="blue",main="Dup1 Hap 2 ONT reads",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(D2H1$V2,D2H1$V4,type="b",col="green",main="Dup2 Hap 1 ONT reads",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(D2H2$V2,D2H2$V4,type="b",col="brown",main="Dup2 Hap 2 ONT reads",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(OR$V2,OR$V4,type="b",col="orange",main="Hap Unassigned ONT reads",ylim=c(0,230),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(AR$V2,AR$V4,type="b",col="yellowgreen",main="All ONT reads",ylim=c(0,230),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
plot(IR$V2,IR$V4,type="b",col="violet",main="Illumina reads",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,170,10894151,185,lwd=3,col="cyan")
rect(11306686,170,11477501,185,lwd=3,col="firebrick1")
abline(h=60,lty=2)
dev.off()
