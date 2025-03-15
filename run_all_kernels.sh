mkdir -p results100

TS_ARRAY=(8 16 32)
TSM_ARRAY=(32 64 128)

for (( i=1; i<=11; i++ ))
do
	for ts in ${TS_ARRAY[*]}
	do
		for tsm in ${TSM_ARRAY[*]}
		do
			for (( num=1; num<=10; num++ ))
			do

				make clean
				make build KERNEL=$i TS=$ts TSM=$tsm TSN=$tsm
				echo "==============================================" >> results100/$i.txt
				echo "test $num" >> results100/$i.txt
				make run &>> results100/$i.txt
			done
		done
	done
done
