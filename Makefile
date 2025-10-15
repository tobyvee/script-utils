.PHONY: test install-bats

test: install-bats
	bats -p --verbose-run ./**/*_test.bats

install-bats:
	@which bats > /dev/null || (echo "Installing bats..." && brew install bats-core)