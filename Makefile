default: build

build: index.html
	mkdir -p build
	cp index.html build

devserver: 
	python3 -m http.server

clean:
	rm -rf build

.PHONY: serve clean devserver
