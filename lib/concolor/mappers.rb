# frozen_string_literal: true

module Concolor
  # ANSI-color & modes mappers
  module Mappers
    autoload :Color, 'concolor/mappers/color'
    autoload :BgColor, 'concolor/mappers/bg_color'
    autoload :Mode, 'concolor/mappers/mode'
  end
end
