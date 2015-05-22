# coding: utf-8
require 'concolor/version'

module Concolor

  def style(*args)
    style_map = {
        # Text color
        black: 30,
        red: 31,
        green: 32,
        yellow: 33,
        blue: 34,
        magenta: 35,
        cyan: 36,
        white: 37,

        # Background color
        black_bg: 40,
        red_bg: 41,
        green_bg: 42,
        yellow_bg: 43,
        blue_bg: 44,
        magenta_bg: 45,
        cyan_bg: 46,
        white_bg: 47,

        # Text Style
        bold: 1,
        underline: 4
    }

    colorize_string = self.to_s

    args.each do |arg|
      if style_map.key?(arg)
        colorize_string = "\033[#{style_map[arg]}m" + colorize_string + "\033[0m"
      end
    end

    colorize_string
  end
end

class String
  include Concolor
end