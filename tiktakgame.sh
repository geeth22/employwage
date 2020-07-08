#tiktaktoe game...........
#user and computer....
#!/bin/bash -x
input=0;
first=2;
win=0
input2=0;
declare -A tiktaktoe
tottaktoe["1,1"]=1
function reset()
{
for((i=0;i<3;i++))
do
for((j=0;j<3;j++))
do

 tiktaktoe["$i,$j"]=2
done
done
}
#reset
function boarddisplay()
{
echo ${tiktaktoe["0,0"]} ${tiktaktoe["0,1"]} ${tiktaktoe["0,2"]}
echo ${tiktaktoe["1,0"]} ${tiktaktoe["1,1"]} ${tiktaktoe["1,2"]}
echo ${tiktaktoe["2,0"]} ${tiktaktoe["2,1"]} ${tiktaktoe["2,2"]}
}
#print
tos()
{
echo -e "now enter coin choice 1.head \n 2.tail"
read choice;
a=$((RANDOM%2+1))
echo "random value $a";
if [ $choice -eq $a ]
then
echo "you won the toss and gets the 1.X \n 2.O";
first=1;
read input
else
first=1;
echo "you  loss the tos and computer randomly generates its choice..."
b=$((RANDOM%2))
if [ $b -eq 0 ]
then
echo "computer chose X";
input=1;
else
echo "computer chose O";
input=0;
fi
fi
if [ $input -eq 1 ]
then 
input=1;
else
input2=0;
fi
}
check(){
	if (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["2,2"]} ))||
	   (( ${tiktaktoe["0,2"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["2,0"]} == ${tiktaktoe["1,1"]} ))||
       	   (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["0,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["0,2"]} == ${tiktaktoe["0,1"]} ))||
	   (( ${tiktaktoe["1,0"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,0"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,2"]} ))||
	   (( ${tiktaktoe["2,0"]} == 1 && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,0"]} && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,2"]} ))||
	   (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["1,0"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["1,0"]} == ${tiktaktoe["2,0"]} ))||
	   (( ${tiktaktoe["0,1"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,1"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["2,1"]} ))||
	   (( ${tiktaktoe["0,2"]} == 1 && ${tiktaktoe["1,2"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["1,2"]} == ${tiktaktoe["2,2"]} ))||
	   (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["2,2"]} ))||
           (( ${tiktaktoe["0,2"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["2,0"]} == ${tiktaktoe["1,1"]} ))||
           (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["0,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["0,2"]} == ${tiktaktoe["0,1"]} ))||
           (( ${tiktaktoe["1,0"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,0"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,2"]} ))||
           (( ${tiktaktoe["2,0"]} == 0 && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,0"]} && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,2"]} ))||
           (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["1,0"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["1,0"]} == ${tiktaktoe["2,0"]} ))||
           (( ${tiktaktoe["0,1"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,1"]} && ${tiktaktoe["1,1"]} == ${tiktaktoe["2,1"]} ))||
           (( ${tiktaktoe["0,2"]} == 0 && ${tiktaktoe["1,2"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["1,2"]} == ${tiktaktoe["2,2"]} ))
then
          win=1;
	echo "win"
else
	echo "loss"
fi
}
computer()
{
if (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,0"]} && 2 == ${tiktaktoe["2,2"]} ))
	then
		tiktaktoe["2,2"]=$input2
         elif  (( ${tiktaktoe["0,2"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["2,0"]} == 2 ))
	then
		tiktaktoe["2,0"]=$input2
          elif  (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["0,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["0,2"]} == 2 ))
	 then
                tiktaktoe["0,2"]=$input2
          elif  (( ${tiktaktoe["1,0"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,0"]} && 2== ${tiktaktoe["1,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["2,0"]} == 1 && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,0"]} && 2 == ${tiktaktoe["2,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,0"]} == 1 && ${tiktaktoe["1,0"]} == ${tiktaktoe["0,0"]} && 2 == ${tiktaktoe["2,0"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,1"]} == 1 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,1"]} && 2 == ${tiktaktoe["2,1"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,2"]} == 1 && ${tiktaktoe["1,2"]} == ${tiktaktoe["0,2"]} && 2 == ${tiktaktoe["2,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,0"]} && 2 == ${tiktaktoe["2,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,2"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["2,0"]} == 2 ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["0,1"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["0,2"]} == 2 ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["1,0"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["1,0"]} && 2 == ${tiktaktoe["1,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["2,0"]} == 0 && ${tiktaktoe["2,1"]} == ${tiktaktoe["2,0"]} && 2 == ${tiktaktoe["2,2"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,0"]} == 0 && ${tiktaktoe["1,0"]} == ${tiktaktoe["0,0"]} && ${tiktaktoe["1,0"]} == 2 ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,1"]} == 0 && ${tiktaktoe["1,1"]} == ${tiktaktoe["0,1"]} && 2 == ${tiktaktoe["2,1"]} ))
	 then
                tiktaktoe["2,2"]=$input2
          elif (( ${tiktaktoe["0,2"]} == 0 && ${tiktaktoe["1,2"]} == ${tiktaktoe["0,2"]} && ${tiktaktoe["1,2"]} == 2 ))
	 then
                tiktaktoe["2,2"]=$input2
	elif (( ${tiktaktoe["0,0"]} == 2 ))
	then
		tiktaktoe["0,0"]=$input2
	 elif (( ${tiktaktoe["0,2"]} == 2 ))
       then
               tiktaktoe["0,2"]=$input2
	 elif (( ${tiktaktoe["2,0"]} == 2 ))
        then
                tiktaktoe["2,0"]=$input2
	 elif (( ${tiktaktoe["2,2"]} == 2 ))
        then
                tiktaktoe["2,2"]=$input2
	 elif (( ${tiktaktoe["1,1"]} == 2 ))
       then
                tiktaktoe["1,1"]=$input2
	elif (( ${tiktaktoe["1,0"]} == 2 ))
	then
		tiktaktoe["1,0"]=$input2
	elif (( ${tiktaktoe["1,2"]} == 2 ))
        then
                tiktaktoe["1,2"]=$input2
	elif (( ${tiktaktoe["0,1"]} == 2 ))
        then
                tiktaktoe["0,1"]=$input2
	elif (( ${tiktaktoe["2,1"]} == 2 ))
        then
                tiktaktoe["2,1"]=$input2

fi
}

function user()
{
echo "enter the coordinate"
read a b;
tiktaktoe["$a,$b"]=1;
}
reset
#tiktaktoe["0,0"]=0;
#tiktaktoe["1,1"]=0;
#tiktaktoe["2,2"]=0;
boarddisplay
#tos
tos
while [ $win -ne 1 ]
do
#boarddisplay
user
computer
check 
boarddisplay
done
