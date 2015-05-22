# frozen_string_literal: true

module Concolor
  # Extension module for String class
  class String
    # @param str [String] some string object
    # @param options [Array<Symbol>]
    def initialize(str = '', options: [])
      @str = str
      parsed = parse_options!(options)

      @color = ::Concolor::Mappers::Color::DATA[parsed[:colors].first]
      @bg_color = ::Concolor::Mappers::BgColor::DATA[parsed[:bg_colors].first]
      @modes = parsed[:modes].map do |mode|
        Concolor::Mappers::Mode::DATA[mode]
      end
    end

    # To string
    # @return [String]
    def to_s
      "\033[#{style}m#{@str}\033[0m"
    end

    # def [](key)
    #   self
    # end

    alias inspect to_s

    private

    # Parse options
    # @param options [Array<Symbol>]
    # @return [Hash] { colors: [...], bg_colors: [...], modes: [...] }
    def parse_options!(options)
      parsed = { colors: [], bg_colors: [], modes: [] }
      wrong = []

      options.each do |opt|
        if Concolor::Mappers::Color::DATA.key?(opt)
          parsed[:colors].push(opt)
        elsif Concolor::Mappers::Mode::DATA.key?(opt)
          parsed[:modes].push(opt)
        elsif Concolor::Mappers::BgColor::DATA.key?(opt)
          parsed[:bg_colors].push(opt)
        else
          wrong.push(opt)
        end
      end

      return parsed if wrong.empty?

      raise ::ArgumentError, "Wrong options: #{wrong.join(', ')}"
    end

    # Get style string
    # @return [String]
    def style
      [@color, @bg_color, @modes].flatten.compact.join(';')
    end
  end
end
