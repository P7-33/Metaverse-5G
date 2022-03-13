cd tools && ./build.sh
	rm -rf bridge
	rm -rf node/pkg/proto
	tools/bin/buf generate

.PHONY: node
node: $(BIN)/guardiand

.PHONY: $(BIN)/guardiand
$(BIN)/guardiand: dirs generate
	cd node && go build -ldflags "-X github.com/certusone/wormhole/node/pkg/version.version=${VERSION}" \
	  -mod=readonly -o ../$(BIN)/guardiand \
	  github.com/certusone/wormhole/node
