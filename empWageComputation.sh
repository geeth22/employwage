
result=$(( RANDOM % 2 ))  # generating random number 0 or 1

if [[ $result -eq 0 ]] ; then 
	echo "absent"
else 
	echo "present"
fi
