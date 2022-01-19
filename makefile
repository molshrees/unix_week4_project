readme : guessinggame.sh
	touch README.md
	echo "Molshree Project: Unix Workbench week 4" > README.md
	echo "\nMake initiated at:" >> README.md
	date >> README.md
	echo "\nLines of code in file guessinggame.sh are: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
