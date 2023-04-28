# frozen_string_literal: true

module Concolor
  # Extension module
  #
  # @example
  #   class CustomString < String
  #     include Concolor::Extension
  #   end
  #
  #   CustomString.new('Some text').concolor(:bold, :red)
  #   # => "\033[31;1mSome text\033[0m"
  #
  # @since 0.0.1
  module Extension
    # @param options [Array<Symbol>]
    # @return [Concolor::String]
    def concolor(*options)
      ::Concolor::String.new(to_s, options: options)
    end
  end
end
