all: dist/index.html

clean:
	rm -rf dist

dist/index.html: dist index.html app.css app.js
	cpp index.html | sed 's/^#.*$$//g' > dist/index.html

dist:
	mkdir dist -p

