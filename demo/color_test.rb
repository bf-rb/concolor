# frozen_string_literal: true

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'concolor', path: './../concolor', require: false
end

require 'concolor'

p 'Black'.concolor(:black, :bg_white)
p 'Red'.concolor(:red)
p 'Light Red (bold)'.concolor(:light_red, :bold)
p 'Green (italic)'.concolor(:green, :italic)
p 'Yellow (underline)'.concolor(:yellow, :underline)
p 'Blue (blink)'.concolor(:blue, :blink)
p 'Cyan (blink_fast)'.concolor(:cyan, :blink_fast)
p 'White (reverse)'.concolor(:white, :reverse)
p 'White'.concolor(:white, :hide)
p 'White (cross)'.concolor(:white, :bg_black, :cross)
p 'White (bold, underline)'.concolor(:white, :bg_black, :bold, :underline)

# p 'White'.concolor[:test]
