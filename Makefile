main:
	mkdir -p tmp
	[ ! -d "tmp/gitignore" ] && git clone https://github.com/github/gitignore tmp/gitignore || (cd tmp/gitignore && git pull)
	echo "# The global .gitignore" >> .gitignore
	echo "# https://github.com/sheerun/the-global-gitignore" >> .gitignore
	echo "" >> .gitignore
	find tmp/gitignore/Global -type f | xargs cat >> .gitignore

