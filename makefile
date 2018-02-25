README.md: guessinggame.sh
	echo "# Guessinggame" > README.md
	date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
