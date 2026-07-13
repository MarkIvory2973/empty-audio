GO := go
CGO_ENABLED := 1

UPX := upx

NFPM := nfpm

.PHONY: install
install:
	$(GO) install github.com/goreleaser/nfpm/v2/cmd/nfpm@latest

	cd src && $(GO) mod download

.PHONY: test
test:
	cd src && $(GO) test ./...

.PHONY: build
build:
	cd src && $(GO) build -trimpath -ldflags="-s -w" -o empty-audio
	-cd src && $(UPX) --best --lzma empty-audio

	mkdir -p dist
	mv src/empty-audio dist

.PHONY: package
package:
	$(NFPM) pkg --packager deb --target dist

.PHONY: clean
clean:
	rm -rf src/empty-audio
	rm -rf dist