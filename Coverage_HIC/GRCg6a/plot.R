read.table(file="Dup1_Hap1.fastq.sorted.bam.txt",header=F)->D1H1
read.table(file="Dup1_Hap2.fastq.sorted.bam.txt",header=F)->D1H2
read.table(file="Dup2_Hap1.fastq.sorted.bam.txt",header=F)->D2H1
read.table(file="Dup2_Hap2.fastq.sorted.bam.txt",header=F)->D2H2
subset_data_d1h1 <- D1H1[D1H1$V2 < 10766772 | D1H1$V2 > 10894151, ]
subset_data_d1h2 <- D1H2[D1H2$V2 < 10766772 | D1H2$V2 > 10894151, ]
subset_data_d2h1 <- D2H1[D2H1$V2 < 11306686 | D2H1$V2 > 11477501, ]
subset_data_d2h2 <- D2H2[D2H2$V2 < 11306686 | D2H2$V2 > 11477501, ]

tiff("Read_Coverage_GRCg6a_HIC.tiff",width = 2980, height = 3080, res = 230)
par(mfrow=c(4,1))
par(mar=c(5,5,4,1)) 
plot(subset_data_d1h1$V2,log(subset_data_d1h1$V4),xlim=c(10500000,11600001),type="b",col="red",ylim=c(0,5),xlab="Position along Chr20",ylab="Number of reads",main="Dup1 Hap 1 HI-C reads",cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,4,10894151,4.5,lwd=3,col="cyan")
rect(11306686,4,11477501,4.5,lwd=3,col="firebrick1")
plot(subset_data_d1h2$V2,log(subset_data_d1h2$V4),type="b",col="blue",main="Dup1 Hap 2 HI-C reads",ylim=c(0,5),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,4,10894151,4.5,lwd=3,col="cyan")
rect(11306686,4,11477501,4.5,lwd=3,col="firebrick1")
plot(subset_data_d2h1$V2,log(subset_data_d2h1$V4),xlim=c(10500000,11600001),type="b",col="green",ylim=c(0,5),xlab="Position along Chr20",ylab="Number of reads",main="Dup2 Hap 1 HI-C reads",cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,4,10894151,4.5,lwd=3,col="cyan")
rect(11306686,4,11477501,4.5,lwd=3,col="firebrick1")
plot(subset_data_d2h2$V2,log(subset_data_d2h2$V4),type="b",col="brown",main="Dup2 Hap 2 HI-C reads",ylim=c(0,5),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10500000,11600001),cex.main=3, cex.axis=1,cex.lab=2)
rect(10766772,4,10894151,4.5,lwd=3,col="cyan")
rect(11306686,4,11477501,4.5,lwd=3,col="firebrick1")
dev.off()


