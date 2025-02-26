mkdir -p results

for (( i=1; i<=11; i++ ))
do
	make clean
	make build KERNEL=$i
	make run &> results/$i.txt
done
