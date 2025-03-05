#compress and split
for density in 0.1 0.01 0.05 0.001 0.0001
do
for readlen in 1000 5000 10000 20000
do
for kb in 0
do
echo $density $readlen $kb
zip -s 20m -r dir_"$density"_"$readlen"_"$kb".zip dir_"$density"_"$readlen"_"$kb"/*
done
done
done
#uncompress and unsplit
for density in 0.1 0.01 0.05 0.001 0.0001
do
for readlen in 1000 5000 10000 20000
do
for kb in 0
do
echo $density $readlen $kb
zip -s 0 dir_"$density"_"$readlen"_"$kb".zip --out unsplit-dir_"$density"_"$readlen"_"$kb".zip
unzip unsplit-dir_"$density"_"$readlen"_"$kb".zip
done
done
done
