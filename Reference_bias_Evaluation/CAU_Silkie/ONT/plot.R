read.table(file="Dup1_hap1.fastq.sorted.bam.txt",header=F)->D1H1
read.table(file="Dup1_hap2.fastq.sorted.bam.txt",header=F)->D1H2
read.table(file="Dup2_hap1.fastq.sorted.bam.txt",header=F)->D2H1
read.table(file="Dup2_hap2.fastq.sorted.bam.txt",header=F)->D2H2
read.table(file="Fm_locus_No_RG.bam.txt",header=F)->OR
read.table(file="SRR17968711_12_CAU_Silkie_Fm_subseted.bam.txt",header=F)->AR
read.table(file="SRR17968701_Fm_locus.bam.txt",header=F)->IR

tiff("Read_Coverage_CAU_ONT.tiff",width = 2980, height = 3080, res = 170)
par(mfrow=c(7,1))
par(mar=c(5,5,4,1)) 
plot(D1H1$V2,D1H1$V4,xlim=c(10513186,12527322),type="b",col="red",ylim=c(0,100),xlab="Position along Chr20",ylab="Number of reads",main="Dup1 Hap 1 ONT reads",cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,80,11144018,85,lwd=3,col="magenta")
rect(11144019,80,11322565,85,lwd=3,col="seagreen1")
rect(11727004,80,11854432,85,lwd=3,col="cyan")
rect(11854433,80,12025334,85,lwd=3,col="firebrick1")
plot(D1H2$V2,D1H2$V4,type="b",col="blue",main="Dup1 Hap 2 ONT reads",ylim=c(0,100),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,80,11144018,85,lwd=3,col="magenta")
rect(11144019,80,11322565,85,lwd=3,col="seagreen1")
rect(11727004,80,11854432,85,lwd=3,col="cyan")
rect(11854433,80,12025334,85,lwd=3,col="firebrick1")
plot(D2H1$V2,D2H1$V4,type="b",col="green",main="Dup2 Hap 1 ONT reads",ylim=c(0,100),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,80,11144018,85,lwd=3,col="magenta")
rect(11144019,80,11322565,85,lwd=3,col="seagreen1")
rect(11727004,80,11854432,85,lwd=3,col="cyan")
rect(11854433,80,12025334,85,lwd=3,col="firebrick1")
plot(D2H2$V2,D2H2$V4,type="b",col="brown",main="Dup2 Hap 2 ONT reads",ylim=c(0,100),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,80,11144018,85,lwd=3,col="magenta")
rect(11144019,80,11322565,85,lwd=3,col="seagreen1")
rect(11727004,80,11854432,85,lwd=3,col="cyan")
rect(11854433,80,12025334,85,lwd=3,col="firebrick1")
plot(OR$V2,OR$V4,type="b",col="orange",main="Hap Unassigned ONT reads",ylim=c(0,180),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,105,11144018,115,lwd=3,col="magenta")
rect(11144019,105,11322565,115,lwd=3,col="seagreen1")
rect(11727004,105,11854432,115,lwd=3,col="cyan")
rect(11854433,105,12025334,115,lwd=3,col="firebrick1")
plot(AR$V2,AR$V4,type="b",col="yellowgreen",main="All ONT reads",ylim=c(0,180),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,105,11144018,115,lwd=3,col="magenta")
rect(11144019,105,11322565,115,lwd=3,col="seagreen1")
rect(11727004,105,11854432,115,lwd=3,col="cyan")
rect(11854433,105,12025334,115,lwd=3,col="firebrick1")
plot(IR$V2,IR$V4,type="b",col="violet",main="Illumina reads",ylim=c(0,200),xlab="Position along Chr20",ylab="Number of reads",xlim=c(10513186,12527322),cex.main=3, cex.axis=1,cex.lab=2)
rect(11016607,105,11144018,115,lwd=3,col="magenta")
rect(11144019,105,11322565,115,lwd=3,col="seagreen1")
rect(11727004,105,11854432,115,lwd=3,col="cyan")
rect(11854433,105,12025334,115,lwd=3,col="firebrick1")
abline(h=60,lty=2)
dev.off()

