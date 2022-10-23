# :computer: Concolor

With `Concolor` you can change the fore- and background colors and text decorations when rendering text on terminals supporting ANSI escape codes. It adds the `concolor` method to `String`.

[![Gem Version](https://badge.fury.io/rb/concolor.svg)](https://badge.fury.io/rb/concolor) [![Ruby CI](https://github.com/bf-rb/concolor/actions/workflows/ci.yml/badge.svg)](https://github.com/bf-rb/concolor/actions) [![GitHub](https://img.shields.io/github/license/bf-rb/concolor?label=License)](https://github.com/bf-rb/concolor/blob/main/LICENSE.txt) [![DOC](https://img.shields.io/badge/DOC-rubydoc.org-blue)](https://rubydoc.org/gems/concolor/0.0.1)

## Installation

Just install the *concolor* gem

```bash
gem install concolor
```

or if you use **bundler** put this in your `Gemfile`

```ruby
gem 'concolor'
```

## Usage

```ruby
require 'concolor'

puts 'Some text'.concolor(:bold, :red)
# "\033[31;1mSome text\033[0m"
```

### Foreground color (text)

| Symbol           |           | code |
| :--------------- | :-------: | :--: |
| `:default`       |           | *29* |
| `:black`         | `#000000` | *30* |
| `:red`           | `#CD0000` | *31* |
| `:green`         | `#00CD00` | *32* |
| `:yellow`        | `#CDCD00` | *33* |
| `:blue`          | `#1E90FF` | *34* |
| `:magenta`       | `#CD00CD` | *35* |
| `:cyan`          | `#00CDCD` | *36* |
| `:light_gray`    | `#E5E5E5` | *37* |
| `:dark_gray`     | `#4C4C4C` | *90* |
| `:light_red`     | `#FF0000` | *91* |
| `:light_green`   | `#00FF00` | *92* |
| `:light_yellow`  | `#FFFF00` | *93* |
| `:light_blue`    | `#4682B4` | *94* |
| `:light_magenta` | `#FF00FF` | *95* |
| `:light_cyan`    | `#00FFFF` | *96* |
| `:white`         | `#FFFFFF` | *97* |

### Background color

| Symbol              |           | code  |
| :------------------ | :-------: | :---: |
| `:bg_default`       |           | *49*  |
| `:bg_black`         | `#000000` | *40*  |
| `:bg_red`           | `#CD0000` | *41*  |
| `:bg_green`         | `#00CD00` | *42*  |
| `:bg_yellow`        | `#CDCD00` | *43*  |
| `:bg_blue`          | `#1E90FF` | *44*  |
| `:bg_magenta`       | `#CD00CD` | *45*  |
| `:bg_cyan`          | `#00CDCD` | *46*  |
| `:bg_light_gray`    | `#E5E5E5` | *47*  |
| `:bg_dark_gray`     | `#4C4C4C` | *100* |
| `:bg_light_red`     | `#FF0000` | *101* |
| `:bg_light_green`   | `#00FF00` | *102* |
| `:bg_light_yellow`  | `#FFFF00` | *103* |
| `:bg_light_blue`    | `#4682B4` | *104* |
| `:bg_light_magenta` | `#FF00FF` | *105* |
| `:bg_light_cyan`    | `#00FFFF` | *106* |
| `:bg_white`         | `#FFFFFF` | *107* |

### Mode (modifying the style of text)

| Symbol        | Description | code |
| :------------ | :---------- | :---: |
| `:reset`      | Reset all SGR effects to their default | *0* |
| `:bold`       | Bold or increased intensity | *1* |
| `:faint`      | Faint or decreased intensity | *2* |
| `:italic`     | Italic | *3* |
| `:underline`  | Singly underlined | *4* |
| `:blink`      | Blink (slow)  | *5* |
| `:blink_fast` | Blink (fast)  | *6* |
| `:reverse`    | Reverse (invert the foreground and background colors) | *7* |
| `:hide`       | Hidden (useful for passwords) | *8* |
| `:cross`      | Cross-out | *9* |
