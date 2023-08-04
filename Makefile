EMACS ?= emacs
PACKAGE_DIR=./test/.elpa

# Run all tests by default.
MATCH ?=

.PHONY: test clean install

default: test

# Remove test dependencies
clean:
	rm -rf $(PACKAGE_DIR)

# Install test dependencies
install: 
	$(EMACS) --batch -L . -L ./test -l ./test/robby-test-env.el -eval '(robby--install-test-deps)'

# Run unit tests
# Example usage to run all tests matching ^robby--history.*:
# 	make test MATCH=robby--history
test: install
	$(EMACS) --batch -L . -L ./test -l ./test/robby-test-env.el -l ./test/robby-tests.el -eval '(ert-run-tests-batch-and-exit "$(MATCH)")'
