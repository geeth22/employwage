#flip coin simulator
#!/bin/bash
echo "FLIP COIN SIMLULATION"

flip=$(( $RANDOM % 2 +1 ))
echo $flip    
if [ $flip -eq 1 ]
then
echo "Head Wins "
else
echo "Tail Wins "
fi

Difference()
{
if [ $head -gt $tails ]
then
hdiffbetweenpoints=$(($head - $tails))
elif [ $tail -gt $heads ]
then
tdiffbetweenpoints=$(($tails - $head))
fi


if [ $hdiffbetweenpoints -eq 1 -o $tdiffbetweenpoints -eq 1 ]
then
runGameTillaTie
elif [ $hdiffbetweenpoints -gt 1 ]
then
echo "Diff is "$hdiffbetweenpoints
echo "Head wins after a tie : " $head
elif [ $tdiffbetweenpoints -gt 1 ]
then
echo "Diff is "$tdiffbetweenpoints
echo "Tails Wins after a tie : " $tails
fi


}

runGameTillaTie(){
head=0
tails=0
while [ $head -lt 21 -a $tails -lt 21 ]
do
flip=$(( $RANDOM % 2 +1 ))    
if [ $flip -eq 1 ]
then
head=$(($head+1))
fi
if [ $flip -eq 2 ]
then
tails=$(($tails+1))
fi
done
Difference
}

while true
do
echo "Looping through a multiple time to see who wins "
echo "1.Flip the coin to see who wins"
echo "2.Flip the coins to see who have tie and wins until diff is minimum 2"
echo "3.exit"
echo "enter the choice:"
read ch;

case $ch in
"1")
head=1
tails=1
while [ $head -lt 21 -a $tails -lt 21 ]
do
flip=$(( $RANDOM % 2 +1 ))    
if [ $flip -eq 1 ]
then
head=$(( $head+1 ))
fi
if [ $flip -eq 2 -a $tails ]
then
tails=$(( $tails+1 ))
fi
done
echo "Heads is : "$head
echo "Tails is : "$tails

if [ $head -eq 21 ]
then
echo "Head Wins : " $head
fi
if [ $tails -eq 21 ]
then
echo "Tails Wins : " $tails
fi
;;

"2")

head=1
tails=1
while [ $head -lt 21 -o $tails -lt 21 ]
do
flip=$(( $RANDOM % 2 +1 ))    
if [ $flip -eq 1 -a $head -lt 21 ]
then
head=$(( $head+1 ))
fi
if [ $flip -eq 2 -a $tails -lt 21 ]
then
tails=$(( $tails+1 ))
fi
done

	
echo "Both Wins :  $tails tails and $head head "
if [ "$tails" -eq "21" -a "$head" -eq "21" ]
then
runGameTillaTie
echo "Heads is : "$head
echo "Tails is : "$tails
fi


;;


"3")
exit
;;

esac
done
