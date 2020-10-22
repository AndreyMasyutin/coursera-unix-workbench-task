readme.md: guessinggame.sh
	touch readme.md
	echo "My Unix Workbench Project" > readme.md
	date >> readme.md
	echo "Total lines of code in guessinggame.sh is " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
