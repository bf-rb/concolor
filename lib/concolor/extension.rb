# frozen_string_literal: true

module Concolor
  # Extension module for String class
  module Extension
    # @param options [Array<Symbol>]
    # @return [Concolor::String]
    def concolor(*options)
      ::Concolor::String.new(to_s, options: options)
    end
  end
end
