# frozen_string_literal: true

module Concolor
  module Mappers
    module Mode
      DATA = {
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
end
