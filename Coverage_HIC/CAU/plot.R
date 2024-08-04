read.table(file="Dup1_Hap1.fastq.sorted.bam.txt",header=F)->D1H1
read.table(file="Dup1_Hap2.fastq.sorted.bam.txt",header=F)->D1H2
read.table(file="Dup2_Hap1.fastq.sorted.bam.txt",header=F)->D2H1
read.table(file="Dup2_Hap2.fastq.sorted.bam.txt",header=F)->D2H2
subset_data_d1h1 <- D1H1[(D1H1$V2 < 11016607 | D1H1$V2 > 11144018) & (D1H2$V2 < 11727004 | D1H2$V2 > 11854432), ]
subset_data_d1h2 <- D1H2[(D1H2$V2 < 11727004 | D1H2$V2 > 11854432) & (D1H1$V2 < 11016607 | D1H1$V2 > 11144018), ]
subset_data_d2h1 <- D2H1[(D2H1$V2 < 11854433 | D2H1$V2 > 12025334) & (D2H2$V2 < 11144019 | D2H2$V2 > 11322565), ]
subset_data_d2h2 <- D2H2[(D2H2$V2 < 11144019 | D2H2$V2 > 11322565) & (D2H1$V2 < 11854433 | D2H1$V2 > 12025334), ]
tiff("Read_Coverage_CAU_HIC.tiff",width = 2980, height = 3080, res = 170)
par(mfrow=c(4,1))
par(mar=c(5,5,4,1)) 
plot(subset_data_d1h1$V2,log(subset_data_d1h1$V4),xlim=c(10513186,12527322),type="b",col="red",ylim=c(0,10),xlab="Position along Chr20",ylab="Number of reads",main="Dup1 Hap 1 HI-C reads",cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,8,11144018,8.5,lwd=3,col="magenta")
rect(11144019,8,11322565,8.5,lwd=3,col="seagreen1")
rect(11727004,8,11854432,8.5,lwd=3,col="cyan")
rect(11854433,8,12025334,8.5,lwd=3,col="firebrick1")
plot(subset_data_d1h2$V2,log(subset_data_d1h2$V4),type="b",col="blue",main="Dup1 Hap 2 HIC reads",ylim=c(0,10),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,8,11144018,8.5,lwd=3,col="magenta")
rect(11144019,8,11322565,8.5,lwd=3,col="seagreen1")
rect(11727004,8,11854432,8.5,lwd=3,col="cyan")
rect(11854433,8,12025334,8.5,lwd=3,col="firebrick1")
plot(subset_data_d2h1$V2,log(subset_data_d2h1$V4),type="b",col="green",main="Dup2 Hap 1 HIC reads",ylim=c(0,10),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,8,11144018,8.5,lwd=3,col="magenta")
rect(11144019,8,11322565,8.5,lwd=3,col="seagreen1")
rect(11727004,8,11854432,8.5,lwd=3,col="cyan")
rect(11854433,8,12025334,8.5,lwd=3,col="firebrick1")
plot(subset_data_d2h2$V2,log(subset_data_d2h2$V4),type="b",col="brown",main="Dup2 Hap 2 HIC reads",ylim=c(0,10),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,8,11144018,8.5,lwd=3,col="magenta")
rect(11144019,8,11322565,8.5,lwd=3,col="seagreen1")
rect(11727004,8,11854432,8.5,lwd=3,col="cyan")
rect(11854433,8,12025334,8.5,lwd=3,col="firebrick1")
dev.off()

