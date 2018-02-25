README.md: guessinggame.sh
	echo "# Guessinggame" > README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub by Aileen Nowak" >> README.md
	date "+Date: %Y-%m-%d, Time: %H:%M:%S%n" >> README.md
	echo "Lines of code in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
