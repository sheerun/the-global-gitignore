main:
	mkdir -p tmp
	[ ! -d "tmp/gitignore" ] && git clone https://github.com/github/gitignore tmp/gitignore || (cd tmp/gitignore && git pull)
	find tmp/gitignore/Global -type f | xargs cat > .gitignore

