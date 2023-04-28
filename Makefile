.PHONY: test demo

# Run test
test:
	bundle exec rspec ./spec

# Build gem
build:
	gem build concolor.gemspec

push:
	gem push concolor-1.0.1.gem

validate: test
	bundle exec rubocop

# Generate documentations
docs:
	bundle exe yard doc

# Run docs server
docs-server: docs
	bundle exe yard server -r

# Run demo
demo:
	ruby demo/color_test.rb
