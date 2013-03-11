all: build

build:
	make clean
	mkdir -p build
	./node_modules/browserify/bin/cmd.js src/init.coffee -o build/framer.js
	cp build/framer.js template/framer.js

test:
	make
	cp build/framer.js test/lib/framer.js
	./node_modules/browserify/bin/cmd.js test/init.coffee -o test/init.js

clean:
	rm -rf dist

.PHONY: build test clean
