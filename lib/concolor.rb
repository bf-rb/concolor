# frozen_string_literal: true

# Base module
module Concolor
  autoload :Version, 'concolor/version'
  autoload :Mappers, 'concolor/mappers'
  autoload :String, 'concolor/string'
  autoload :Extension, 'concolor/extension'

  def self.auto_include_to(klass)
    klass.send(:include, Concolor::Extension)
  end
end

Concolor.auto_include_to(String)
