# frozen_string_literal: true

module Concolor
  # Gem version module
  module Version
    # x.0.0 changes that will break existing users code if they update
    MAJOR = 0
    # 0.x.0 changes, such as new functionality/features
    MINOR = 0
    # 0.0.x changes, such as small bug fixes
    PATCH = 1

    # Get current gem version
    # @return [String]
    def self.current
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
