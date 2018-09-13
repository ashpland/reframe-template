figwheel: bundle
	clojure -m figwheel.main -b dev -r

.PHONY=bundle
bundle:
	make -C npm dist/bundle.js

.PHONY=clean
clean:
	make -C npm clean
	rm -rf target/public

.PHONY=clobber
clobber: clean
	make -C npm clobber
