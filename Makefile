.PHONY: test demo docs push

GEM_VERSION := $(shell ruby -r ./lib/concolor/version.rb -e 'puts Concolor::Version::CURRENT')

# Run test
test:
	@bundle exec rspec ./spec

# Build gem
build:
	@gem build concolor.gemspec

push:
	@gem push concolor-$(GEM_VERSION).gem

validate: test
	@bundle exec rubocop

# Generate documentations
docs:
	@rm -rf doc
	@bundle exe yard doc

# Run docs server
docs-server: docs
	@bundle exe yard server -r

# Run demo
demo:
	@ruby demo/color_test.rb
