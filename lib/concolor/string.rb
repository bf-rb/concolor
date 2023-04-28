# frozen_string_literal: true

module Concolor
  # Extension module for String class
  #
  # @since 1.0.1
  class String
    # @param str [String] some string object
    # @param options [Array<Symbol>]
    def initialize(str = '', options: [])
      @str = str
      parsed = parse_options!(options)

      @color = ::Concolor::Mappers::COLORS[parsed[:colors].first]
      @bg_color = ::Concolor::Mappers::BG_COLORS[parsed[:bg_colors].first]
      @modes = parsed[:modes].map do |mode|
        Concolor::Mappers::MODES[mode]
      end
    end

    # To string
    #
    # @return [String]
    def to_s
      "\033[#{style}m#{@str}\033[0m"
    end

    alias inspect to_s

    private

    # Parse options
    #
    # @param options [Array<Symbol>]
    # @return [Hash] { colors: [...], bg_colors: [...], modes: [...] }
    def parse_options!(options)
      parsed = { colors: [], bg_colors: [], modes: [] }
      wrong = []

      options.each do |opt|
        if Concolor::Mappers::COLORS.key?(opt)
          parsed[:colors].push(opt)
        elsif Concolor::Mappers::MODES.key?(opt)
          parsed[:modes].push(opt)
        elsif Concolor::Mappers::BG_COLORS.key?(opt)
          parsed[:bg_colors].push(opt)
        else
          wrong.push(opt)
        end
      end

      return parsed if wrong.empty?

      raise ::ArgumentError, "Wrong options: #{wrong.join(', ')}"
    end

    # Get style string
    #
    # @return [String]
    def style
      [@color, @bg_color, @modes].flatten.compact.join(';')
    end
  end
end
