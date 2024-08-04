read.table(file="all_hap1_D1.reads_25filt",header=FALSE,fill=TRUE)->M
tiff("Read_IDs_25_HDPs_hap1_D1.tiff",width = 8500, height = 7500, res = 150)
par(mar=c(8,5,1,1))
plot(M$V1,M$V7,col= ifelse( M$V2=="HAP2", "red", ifelse( M$V2=="HAP1", "blue", "black")),yaxt = 'n',xlim=c(10766772,11477501),ylim=c(0,max(M$V7,na.rm=TRUE)+5),pch=16,xlab="Positions along chromosome 20",ylab="Read Ids",cex=2.5,cex.axis=2,cex.lab=2)
rect(10766772,max(M$V7,na.rm=TRUE)+1,10894151,max(M$V7,na.rm=TRUE)+3,col="cyan")
rect(11306686,max(M$V7,na.rm=TRUE)+1,11477501,max(M$V7,na.rm=TRUE)+3,col="firebrick1")
text(rep(11154151,length(M$V7)),M$V7,M$V3,cex=3.5)
dev.off()

read.table(file="all_hap1_D2.reads_25filt",header=FALSE,fill=TRUE)->M
tiff("Read_IDs_25_HDPs_hap1_D2.tiff",width = 8500, height = 7500, res = 150)
par(mar=c(8,5,1,1))
plot(M$V1,M$V7,col= ifelse( M$V2=="HAP2", "red", ifelse( M$V2=="HAP1", "blue", "black")),yaxt = 'n',xlim=c(10766772,11477501),ylim=c(0,max(M$V7,na.rm=TRUE)+5),pch=16,xlab="Positions along chromosome 20",ylab="Read Ids",cex=2.5,cex.axis=2,cex.lab=2)
rect(10766772,max(M$V7,na.rm=TRUE)+1,10894151,max(M$V7,na.rm=TRUE)+3,col="cyan")
rect(11306686,max(M$V7,na.rm=TRUE)+1,11477501,max(M$V7,na.rm=TRUE)+3,col="firebrick1")
text(rep(11154151,length(M$V7)),M$V7,M$V3,cex=3.5)
dev.off()

read.table(file="all_hap2_D2.reads_25filt",header=FALSE,fill=TRUE)->M
tiff("Read_IDs_25_HDPs_hap2_D2.tiff",width = 8500, height = 7500, res = 150)
par(mar=c(8,5,1,1))
plot(M$V1,M$V7,col= ifelse( M$V2=="HAP2", "red", ifelse( M$V2=="HAP1", "blue", "black")),yaxt = 'n',xlim=c(10766772,11477501),ylim=c(0,max(M$V7,na.rm=TRUE)+5),pch=16,xlab="Positions along chromosome 20",ylab="Read Ids",cex=2.5,cex.axis=2,cex.lab=2)
rect(10766772,max(M$V7,na.rm=TRUE)+1,10894151,max(M$V7,na.rm=TRUE)+3,col="cyan")
rect(11306686,max(M$V7,na.rm=TRUE)+1,11477501,max(M$V7,na.rm=TRUE)+3,col="firebrick1")
text(rep(11154151,length(M$V7)),M$V7,M$V3,cex=3.5)
dev.off()

read.table(file="all_hap2_D1.reads_25filt",header=FALSE,fill=TRUE)->M
tiff("Read_IDs_25_HDPs_hap2_D1.tiff",width = 8500, height = 7500, res = 150)
par(mar=c(8,5,1,1))
plot(M$V1,M$V7,col= ifelse( M$V2=="HAP2", "red", ifelse( M$V2=="HAP1", "blue", "black")),yaxt = 'n',xlim=c(10766772,11477501),ylim=c(0,max(M$V7,na.rm=TRUE)+5),pch=16,xlab="Positions along chromosome 20",ylab="Read Ids",cex=2.5,cex.axis=2,cex.lab=2)
rect(10766772,max(M$V7,na.rm=TRUE)+1,10894151,max(M$V7,na.rm=TRUE)+3,col="cyan")
rect(11306686,max(M$V7,na.rm=TRUE)+1,11477501,max(M$V7,na.rm=TRUE)+3,col="firebrick1")
text(rep(11154151,length(M$V7)),M$V7,M$V3,cex=3.5)
dev.off()

