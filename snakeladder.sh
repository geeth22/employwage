#snake and Ladder
#!/bin/bash -x
player1=0
player2=0
flag=0

d=0
dice(){
	r=$((RANDOM % 6 + 1))
	d=$r
}

cnt=0
flag=0
while [ $player1 -ne 100 ] && [ $player2 -ne 100 ]
do
	ch=$((RANDOM % 3))
        dice
        roll=$(($roll + 1))

	if [ $flag -eq 0 ]
	then
		 flag=1
                if [ $ch -eq 2 ]
                then
                        player1=$(($player1 + $d))
                elif [ $ch -eq 1 ]
                        then
                                player1=$(($player1 - $d))
                        else
                                player1=$player1
                fi
		if [ $player1 -lt 0 ]
		then
			player1=0
		else
			if [ $player1 -gt 100 ]
			then
				player1=$(($player1 - $d))
			fi
		fi
	arr[$cnt]=$player1
	else
		flag=0
		if [ $ch -eq 2 ]
                then
                        player2=$(($player2 + $d))
                elif [ $ch -eq 1 ]
                        then
                                player2=$(($player2 - $d))
                        else
                                player2=$player2
                fi
		if [ $player2 -lt 0 ]
                then
                        player2=0
                else
                        if [ $player2 -gt 100 ]
                        then
                                player2=$(($player2 - $d))
                        fi
        		arr[$cnt]=$player2
		fi
	arr[$cnt]=$player2
	fi
	cnt=$(($cnt + 1))
done


flag=0
for ((i=0; i<$roll; i++))
do
	if [ $flag -eq 0 ]
	then
		flag=1
		echo "Turn $(($i + 1)) : Position of player1 ${arr[$i]}"
	else
		flag=0
		echo "Turn $(($i + 1)) : Position of Player2 ${arr[$i]}"
	fi
done

if [ $player2 -eq 100 ]
then
	echo "player2 win..."
else
	echo "player1 win..."
fi
