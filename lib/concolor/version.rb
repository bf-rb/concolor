# frozen_string_literal: true

module Concolor
  # Gem version module
  #
  # @since 0.0.1
  module Version
    # x.0.0 changes that will break existing users code if they update
    MAJOR = 1
    # 0.x.0 changes, such as new functionality/features
    MINOR = 0
    # 0.0.x changes, such as small bug fixes
    PATCH = 1

    # Get current gem version
    #
    # @example
    #   Concolor::Version::CURRENT # => "1.0.1"
    #
    # @since 1.0.1
    CURRENT = "#{MAJOR}.#{MINOR}.#{PATCH}"

    # Get current gem version
    #
    # @deprecated use {CURRENT} instead.
    #
    # @example
    #   Concolor::Version.current # => "0.0.1"
    #
    # @return [String]
    def self.current
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
