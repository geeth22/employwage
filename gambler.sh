#gambler
#!/bin/bash -x
nextmonth=0;
while [ $nextmonth -eq 0 ]
do
win=0;
loss=0;
for((i=0;i<20;i++))
do
win1=0;loss1=0;
for((i=0;i<30;i++))
do
stake=100;
bet=1;
count=0;
win2=0;
loss2=0;
if [ $stake -gt 0 ]
then
while [ $stake -gt 50 ] && [ $stake -lt 150 ]
do
count=$((count+1));
gambler=$((RANDOM%2))
if [ $gambler -eq 1 ]
then
stake=$((stake+1));
win=$((win+1));
win2=$((win2+1));
else
stake=$((stake-1));
loss=$((loss+1));
loss2=$((loss+1));
fi
done
echo "stake $stake";
echo "count $count"
declare -A arr
arr[$win1]=$i;
arr1[$j]=$win1;
percentageloss=$(($((loss*100))/count));
percentagewin=$(($((win*100))/count));
echo "percentage of win $percentagewin";
echo "percentage of loss $percentageloss"
if [ $win -gt $loss ]
then
win1=$((win1+1));
echo "win today";
else
loss1=$((loss1+1));
echo "loss today";
fi
else
echo "no money";
fi
done
done
echo "${arr1[@]}"
max=${arr1[0]};
for  j in "${arr1[@]}"
do
((j > max)) && max=$j;
done

echo "max $max"
less=${arr1[0]};
for  j in "${arr1[@]}"
do
((j < less)) && less=$j;
done
echo "less $less"
echo "for a day win $i $win";
echo "for a day loss $i $loss";
echo "win for $win1 times in 30 days in total bets";
echo "loss for $loss1 times in 30 days in total bets";
echo "best day ${arr[$max]}";
echo "worst day ${arr[$less]}";
echo ${arr1[@]}
nextmonth=1;
echo "play for next month enter 0 else 1";
read nextmonth;
done
