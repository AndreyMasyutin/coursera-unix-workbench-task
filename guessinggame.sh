function congrats {
	echo "Correct! Congratulations!"
}

correct_answer=$(cd $PWD | ls | wc -l)
echo "How many files are there in the current directory? Please make your guess!"
read response

while [[ $response -ne $correct_answer ]]
do
	if [[ $response -gt $correct_answer ]]
	then
		echo "Too high! Try again!"
		read response
	elif [[ $response -lt $correct_answer ]]
	then
		echo "Too low! Try again!"
		read response
	fi
done

if [[ $response -eq $correct_answer ]]
then
	congrats
fi
