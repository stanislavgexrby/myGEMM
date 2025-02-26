mkdir -p results

for (( i=6; i<=10; i++ ))
do
	make clean
	make build KERNEL=$i
	make run &> results/$i.txt
done
