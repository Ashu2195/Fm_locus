read.table(file="Dup1_3HDP_ONT_read_pair_count.txt",header=TRUE,fill=TRUE)->D1
rowSums(D1[, c(4:67)])->D1$rowsums
D1[, c(4:67)]/D1$rowsums->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D1$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D1$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D1$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D1$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D1$fifth

D1$first-D1$third->D1$ft
D1$second-D1$third->D1$st

tiff("ONT_Dup1_HDP_triplet_read_count_ratio.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$first,ylim=c(0,1),col="red",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP triplet", cex.main=2.5)
points(D1$Position1,D1$second,ylim=c(0,1),col="blue",type="b",lwd=3)
points(D1$Position1,D1$third,ylim=c(0,1),col="brown",type="b",lwd=3)
points(D1$Position1,D1$fourth,ylim=c(0,1),col="yellowgreen",type="b",lwd=3)
points(D1$Position1,D1$fifth,ylim=c(0,1),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup1_HDP_triplet_read_count_ratio_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$ft,ylim=c(0,1),col="orange1",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP triplet", cex.main=2.5)
points(D1$Position1,D1$st,ylim=c(0,1),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup1_HDP_triplet_read_count_ratio_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D1$first,col="red",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$second,col="blue",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$third,col="brown",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup1 ONT HDP triplet", cex.main=2.5)
abline(v=0.25)

hist(D1$fourth,col="yellowgreen",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$fifth,col="magenta",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=0.25)
dev.off()
###################################################################################################################################
read.table(file="Dup2_3HDP_ONT_read_pair_count.txt",header=TRUE,fill=TRUE)->D2
rowSums(D2[, c(4:67)])->D2$rowsums
D2[, c(4:67)]/D2$rowsums->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D2$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D2$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D2$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D2$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D2$fifth

D2$first-D2$third->D2$ft
D2$second-D2$third->D2$st

tiff("ONT_Dup2_HDP_triplet_read_count_ratio.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$first,ylim=c(0,1),col="red",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP triplet", cex.main=2.5)
points(D2$Position1,D2$second,ylim=c(0,1),col="blue",type="b",lwd=3)
points(D2$Position1,D2$third,ylim=c(0,1),col="brown",type="b",lwd=3)
points(D2$Position1,D2$fourth,ylim=c(0,1),col="yellowgreen",type="b",lwd=3)
points(D2$Position1,D2$fifth,ylim=c(0,1),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup2_HDP_triplet_read_count_ratio_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$ft,ylim=c(0,1),col="orange1",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP triplet", cex.main=2.5)
points(D2$Position1,D2$st,ylim=c(0,1),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup2_HDP_triplet_read_count_ratio_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D2$first,col="red",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$second,col="blue",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$third,col="brown",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup2 ONT HDP triplet", cex.main=2.5)
abline(v=0.25)

hist(D2$fourth,col="yellowgreen",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$fifth,col="magenta",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=0.25)
dev.off()
###################################################################################################################################
read.table(file="Dup1_3HDP_ONT_read_pair_count.txt",header=TRUE,fill=TRUE)->D1
rowSums(D1[, c(4:67)])->D1$rowsums
D1[, c(4:67)]->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D1$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D1$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D1$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D1$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D1$fifth

D1$first-D1$third->D1$ft
D1$second-D1$third->D1$st

tiff("ONT_Dup1_HDP_triplet_read_count.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$first,ylim=c(0,100),col="red",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP triplet", cex.main=2.5)
points(D1$Position1,D1$second,ylim=c(0,100),col="blue",type="b",lwd=3)
points(D1$Position1,D1$third,ylim=c(0,100),col="brown",type="b",lwd=3)
points(D1$Position1,D1$fourth,ylim=c(0,100),col="yellowgreen",type="b",lwd=3)
points(D1$Position1,D1$fifth,ylim=c(0,100),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup1_HDP_triplet_read_count_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$ft,ylim=c(0,100),col="orange1",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP triplet", cex.main=2.5)
points(D1$Position1,D1$st,ylim=c(0,100),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup1_HDP_triplet_read_count_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D1$first,col="red",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=25)

hist(D1$second,col="blue",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=25)

hist(D1$third,col="brown",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup1 ONT HDP triplet", cex.main=2.5)
abline(v=25)

hist(D1$fourth,col="yellowgreen",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=25)

hist(D1$fifth,col="magenta",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=25)
dev.off()
###################################################################################################################################
read.table(file="Dup2_3HDP_ONT_read_pair_count.txt",header=TRUE,fill=TRUE)->D2
rowSums(D2[, c(4:67)])->D2$rowsums
D2[, c(4:67)]->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D2$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D2$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D2$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D2$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D2$fifth

D2$first-D2$third->D2$ft
D2$second-D2$third->D2$st

tiff("ONT_Dup2_HDP_triplet_read_count.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$first,ylim=c(0,100),col="red",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP triplet", cex.main=2.5)
points(D2$Position1,D2$second,ylim=c(0,100),col="blue",type="b",lwd=3)
points(D2$Position1,D2$third,ylim=c(0,100),col="brown",type="b",lwd=3)
points(D2$Position1,D2$fourth,ylim=c(0,100),col="yellowgreen",type="b",lwd=3)
points(D2$Position1,D2$fifth,ylim=c(0,100),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup2_HDP_triplet_read_count_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$ft,ylim=c(0,100),col="orange1",type="b",xlab="Position along Chr20",ylab=" Read count spanning HDP triplet",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP triplet", cex.main=2.5)
points(D2$Position1,D2$st,ylim=c(0,100),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup2_HDP_triplet_read_count_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D2$first,col="red",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=25)

hist(D2$second,col="blue",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=25)

hist(D2$third,col="brown",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup2 ONT HDP triplet", cex.main=2.5)
abline(v=25)

hist(D2$fourth,col="yellowgreen",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=25)

hist(D2$fifth,col="magenta",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=25)
dev.off()
###################################################################################################################################
read.table(file="Dup1_ONT_HDP_pair_count.txt",header=TRUE,fill=TRUE)->D1
rowSums(D1[, c(3:18)])->D1$rowsums
D1[, c(3:18)]/D1$rowsums->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D1$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D1$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D1$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D1$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D1$fifth

D1$first-D1$third->D1$ft
D1$second-D1$third->D1$st

tiff("ONT_Dup1_HDP_pair_read_count_ratio.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$first,ylim=c(0,1),col="red",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP pair", cex.main=2.5)
points(D1$Position1,D1$second,ylim=c(0,1),col="blue",type="b",lwd=3)
points(D1$Position1,D1$third,ylim=c(0,1),col="brown",type="b",lwd=3)
points(D1$Position1,D1$fourth,ylim=c(0,1),col="yellowgreen",type="b",lwd=3)
points(D1$Position1,D1$fifth,ylim=c(0,1),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup1_HDP_pair_read_count_ratio_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$ft,ylim=c(0,1),col="orange1",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP pair", cex.main=2.5)
points(D1$Position1,D1$st,ylim=c(0,1),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup1_HDP_pair_read_count_ratio_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D1$first,col="red",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$second,col="blue",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$third,col="brown",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup1 ONT HDP pair", cex.main=2.5)
abline(v=0.25)

hist(D1$fourth,col="yellowgreen",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=0.25)

hist(D1$fifth,col="magenta",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=0.25)
dev.off()
###################################################################################################################################
read.table(file="Dup2_ONT_HDP_pair_count.txt",header=TRUE,fill=TRUE)->D2
rowSums(D2[, c(3:18)])->D2$rowsums
D2[, c(3:18)]/D2$rowsums->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D2$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D2$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D2$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D2$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D2$fifth

D2$first-D2$third->D2$ft
D2$second-D2$third->D2$st

tiff("ONT_Dup2_HDP_pair_read_count_ratio.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$first,ylim=c(0,1),col="red",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP pair", cex.main=2.5)
points(D2$Position1,D2$second,ylim=c(0,1),col="blue",type="b",lwd=3)
points(D2$Position1,D2$third,ylim=c(0,1),col="brown",type="b",lwd=3)
points(D2$Position1,D2$fourth,ylim=c(0,1),col="yellowgreen",type="b",lwd=3)
points(D2$Position1,D2$fifth,ylim=c(0,1),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup2_HDP_pair_read_count_ratio_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$ft,ylim=c(0,1),col="orange1",type="b",xlab="Position along Chr20",ylab="Ratio of read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP pair", cex.main=2.5)
points(D2$Position1,D2$st,ylim=c(0,1),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup2_HDP_pair_read_count_ratio_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D2$first,col="red",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$second,col="blue",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$third,col="brown",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup2 ONT HDP pair", cex.main=2.5)
abline(v=0.25)

hist(D2$fourth,col="yellowgreen",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=0.25)

hist(D2$fifth,col="magenta",xlim=c(0,0.8),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=0.25)
dev.off()
###################################################################################################################################
read.table(file="Dup1_ONT_HDP_pair_count.txt",header=TRUE,fill=TRUE)->D1
rowSums(D1[, c(3:18)])->D1$rowsums
D1[, c(3:18)]->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D1$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D1$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D1$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D1$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D1$fifth

D1$first-D1$third->D1$ft
D1$second-D1$third->D1$st

tiff("ONT_Dup1_HDP_pair_read_count.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$first,ylim=c(0,100),col="red",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP pair", cex.main=2.5)
points(D1$Position1,D1$second,ylim=c(0,100),col="blue",type="b",lwd=3)
points(D1$Position1,D1$third,ylim=c(0,100),col="brown",type="b",lwd=3)
points(D1$Position1,D1$fourth,ylim=c(0,100),col="yellowgreen",type="b",lwd=3)
points(D1$Position1,D1$fifth,ylim=c(0,100),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup1_HDP_pair_read_count_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D1$Position1,D1$ft,ylim=c(0,100),col="orange1",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup1 ONT HDP pair", cex.main=2.5)
points(D1$Position1,D1$st,ylim=c(0,100),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup1_HDP_pair_read_count_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D1$first,col="red",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=25)

hist(D1$second,col="blue",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=25)

hist(D1$third,col="brown",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup1 ONT HDP pair", cex.main=2.5)
abline(v=25)

hist(D1$fourth,col="yellowgreen",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=25)

hist(D1$fifth,col="magenta",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=25)
dev.off()
###################################################################################################################################
read.table(file="Dup2_ONT_HDP_pair_count.txt",header=TRUE,fill=TRUE)->D2
rowSums(D2[, c(3:18)])->D2$rowsums
D2[, c(3:18)]->P

apply(P, 1, function(x) sort(x, decreasing = TRUE)[1])->D2$first
apply(P, 1, function(x) sort(x, decreasing = TRUE)[2])->D2$second
apply(P, 1, function(x) sort(x, decreasing = TRUE)[3])->D2$third
apply(P, 1, function(x) sort(x, decreasing = TRUE)[4])->D2$fourth
apply(P, 1, function(x) sort(x, decreasing = TRUE)[5])->D2$fifth

D2$first-D2$third->D2$ft
D2$second-D2$third->D2$st

tiff("ONT_Dup2_HDP_pair_read_count.tiff",width = 5500, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$first,ylim=c(0,100),col="red",type="b",xlab="Position along Chr20",ylab="Read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP pair", cex.main=2.5)
points(D2$Position1,D2$second,ylim=c(0,100),col="blue",type="b",lwd=3)
points(D2$Position1,D2$third,ylim=c(0,100),col="brown",type="b",lwd=3)
points(D2$Position1,D2$fourth,ylim=c(0,100),col="yellowgreen",type="b",lwd=3)
points(D2$Position1,D2$fifth,ylim=c(0,100),col="magenta",type="b",lwd=3)
legend("topleft", legend=c("First", "Second", "Third", "Fourth", "Fifth"), fill = c("red","blue","brown","yellowgreen","magenta"))
dev.off()

tiff("ONT_Dup2_HDP_pair_read_count_FT_ST.tiff",width = 5000, height = 3000, res = 300)
par(mar=c(5,5,3,1)) 
plot(D2$Position1,D2$ft,ylim=c(0,100),col="orange1",type="b",xlab="Position along Chr20",ylab=" Read count spanning HDP pair",lwd=3,cex.lab=1.5,cex.axis=1,main="Dup2 ONT HDP pair", cex.main=2.5)
points(D2$Position1,D2$st,ylim=c(0,100),col="seagreen3",type="b",lwd=3)
legend("topleft", legend=c("First-Third", "Second-Third"), fill = c("orange1","seagreen3"))
dev.off()

tiff("ONT_Dup2_HDP_pair_read_count_Histogram.tiff",width = 5500, height = 3000, res = 300)
par(mfrow=c(1,5))
par(mar=c(5,5,3,1)) 
hist(D2$first,col="red",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="First",ylab="Frequency",main="")
abline(v=25)

hist(D2$second,col="blue",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Second",ylab="Frequency",main="")
abline(v=25)

hist(D2$third,col="brown",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Third",ylab="Frequency",main="Dup2 ONT HDP pair", cex.main=2.5)
abline(v=25)

hist(D2$fourth,col="yellowgreen",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fourth",ylab="Frequency",main="")
abline(v=25)

hist(D2$fifth,col="magenta",xlim=c(0,80),cex.lab=2.5,cex.axis=1.5,xlab="Fifth",ylab="Frequency",main="")
abline(v=25)
dev.off()
