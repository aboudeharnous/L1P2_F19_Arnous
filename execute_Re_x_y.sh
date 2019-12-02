#printing this message on the terminal
echo "Running the input preparation for the turbulent simulation"
n=1
for Re in 10000 50000 100000 500000 1000000
do
m=1
for xMesh in 512 1024
do
o=1
for yMesh in 128 256
do
mkdir Aboudeh${n}_${m}_${o}
cd originalF
sed -e "s/rrrrrrr/${Re}/" -e "s/xxxx/${xMesh}/" -e "s/yyy/${yMesh}/" inputOrig > input.dat
cp input.dat ../Aboudeh${n}_${m}_${o}
cd ../
#echo "Creating Aboudeh${n}_${m}_${o} with input.dat file containing Re ${Re} and xmesh ${xMesh} and ymesh {yMesh}
o=$(( $o + 1 ))
done
m=$(( $m + 1 ))
done
n=$(( $n + 1 ))
done
echo "input file preparation is done"
