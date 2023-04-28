# frozen_string_literal: true

module Concolor
  # ANSI escape codes mappers
  #
  # @since 1.0.1
  module Mappers
    COLORS = {
      default: 39,
      black: 30,
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34,
      magenta: 35,
      cyan: 36,
      light_gray: 37,
      dark_gray: 90,
      light_red: 91,
      light_green: 92,
      light_yellow: 93,
      light_blue: 94,
      light_magenta: 95,
      light_cyan: 96,
      white: 97
    }.freeze

    BG_COLORS = {
      bg_default: 49,
      bg_black: 40,
      bg_red: 41,
      bg_green: 42,
      bg_yellow: 43,
      bg_blue: 44,
      bg_magenta: 45,
      bg_cyan: 46,
      bg_light_gray: 47,
      bg_dark_gray: 100,
      bg_light_red: 101,
      bg_light_green: 102,
      bg_light_yellow: 103,
      bg_light_blue: 104,
      bg_light_magenta: 105,
      bg_light_cyan: 106,
      bg_white: 107
    }.freeze

    MODES = {
      reset: 0,
      bold: 1,
      faint: 2,
      italic: 3,
      underline: 4,
      blink: 5,
      blink_fast: 6,
      reverse: 7,
      hide: 8,
      cross: 9
    }.freeze
  end
end
