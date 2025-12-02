all: pkg

.PHONY: clean test

pkg: cbr-wasm/src/lib.rs cbr-wasm/Cargo.toml
	cd cbr-wasm && wasm-pack build --scope brave-intl --out-dir ../pkg --target web

clean:
	rm -rf pkg

test: pkg
	node test.js
