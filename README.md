# Concolor

[![Gem](https://img.shields.io/gem/v/concolor?color=e9573f&include_prereleases&logo=rubygems&style=for-the-badge)](https://rubygems.org/gems/concolor) [![Ruby CI](https://img.shields.io/github/actions/workflow/status/bf-rb/concolor/ci.yml?branch=main&label=Ruby%20CI&logo=githubactions&style=for-the-badge)](https://github.com/bf-rb/concolor/actions) [![RubyDoc](https://img.shields.io/badge/RubyDoc-e2e2e2.svg?style=for-the-badge&logo=readme)](https://bf-rb.github.io/concolor/v1.0.1/)

With `Concolor` you can change the fore- and background colors and text decorations when rendering text on terminals supporting ANSI escape codes. It adds the `concolor` method to `String` objects.

![License](https://img.shields.io/github/license/bf-rb/concolor?style=for-the-badge) ![Stars](https://img.shields.io/github/stars/bf-rb/concolor?color=E3B341&logo=github&logoColor=E3B341&style=for-the-badge) ![Forks](https://img.shields.io/github/forks/bf-rb/concolor?color=000&logo=github&logoColor=000&style=for-the-badge) ![Watchers](https://img.shields.io/github/watchers/bf-rb/concolor?logo=github&style=for-the-badge)

## Used technologies, API, tools, etc

[ruby-logo]: https://img.shields.io/badge/Ruby-cc342d.svg?style=flat&logo=ruby&logoColor=fff
[git-logo]: https://img.shields.io/badge/Git-000.svg?style=flat&logo=git&logoColor=f54d27
[github-actions-logo]: https://img.shields.io/badge/GitHub%20Actions-2671e5.svg?style=flat&logo=githubactions&logoColor=fff
[rubocop-logo]: https://img.shields.io/badge/RuboCop-f5f5f5.svg?style=flat&logo=rubocop&logoColor=000
[vs-code-logo]: https://img.shields.io/badge/VS%20Code-2c2c32.svg?style=flat&logo=visualstudiocode&logoColor=22a8f1
[docker-logo]: https://img.shields.io/badge/Docker-003f8c.svg?style=flat&logo=docker&logoColor=fff
[ruby-gems-logo]: https://img.shields.io/badge/Ruby%20Gems-e9573f.svg?style=flat&logo=rubygems&logoColor=fff

[![ruby-logo]](https://www.ruby-lang.org/) [![git-logo]](https://git-scm.com/) [![github-actions-logo]](https://docs.github.com/en/actions) [![rubocop-logo]](https://rubocop.org/) [![vs-code-logo]](https://code.visualstudio.com/) [![docker-logo]](https://www.docker.com/) [![ruby-gems-logo]](https://rubygems.org/)

## Development

Gem development information and current project status:

[![Ruby CI](https://img.shields.io/github/actions/workflow/status/bf-rb/concolor/ci.yml?branch=dev&label=Ruby%20CI&logo=githubactions&style=for-the-badge)](https://github.com/bf-rb/concolor/actions) [![Open issues](https://img.shields.io/github/issues-raw/bf-rb/concolor?color=red&logo=github&style=for-the-badge)](https://github.com/bf-rb/concolor/issues) ![Closed issues](https://img.shields.io/github/issues-closed-raw/bf-rb/concolor?logo=github&style=for-the-badge)

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

### Foreground color & Background color

[#000000]: https://via.placeholder.com/15/000000/000000.png
[#CD0000]: https://via.placeholder.com/15/CD0000/CD0000.png
[#00CD00]: https://via.placeholder.com/15/00CD00/00CD00.png
[#CDCD00]: https://via.placeholder.com/15/CDCD00/CDCD00.png
[#1E90FF]: https://via.placeholder.com/15/1E90FF/1E90FF.png
[#CD00CD]: https://via.placeholder.com/15/CD00CD/CD00CD.png
[#00CDCD]: https://via.placeholder.com/15/00CDCD/00CDCD.png
[#E5E5E5]: https://via.placeholder.com/15/E5E5E5/E5E5E5.png
[#4C4C4C]: https://via.placeholder.com/15/4C4C4C/4C4C4C.png
[#FF0000]: https://via.placeholder.com/15/FF0000/FF0000.png
[#00FF00]: https://via.placeholder.com/15/00FF00/00FF00.png
[#FFFF00]: https://via.placeholder.com/15/FFFF00/FFFF00.png
[#4682B4]: https://via.placeholder.com/15/4682B4/4682B4.png
[#FF00FF]: https://via.placeholder.com/15/FF00FF/FF00FF.png
[#00FFFF]: https://via.placeholder.com/15/00FFFF/00FFFF.png
[#FFFFFF]: https://via.placeholder.com/15/FFFFFF/FFFFFF.png

| Foreground color | code |   color    | Background color   | code  |
| :--------------- | :--: | :--------: | :----------------- | :---: |
| `:default`       | *29* |            | `:bg_default`      | *49*  |
| `:black`         | *30* | ![#000000] | `:bg_black`        | *40*  |
| `:red`           | *31* | ![#CD0000] | `:bg_red`          | *41*  |
| `:green`         | *32* | ![#00CD00] | `:bg_green`        | *42*  |
| `:yellow`        | *33* | ![#CDCD00] | `:bg_yellow`       | *43*  |
| `:blue`          | *34* | ![#1E90FF] | `:bg_blue`         | *44*  |
| `:magenta`       | *35* | ![#CD00CD] | `:bg_magenta`      | *45*  |
| `:cyan`          | *36* | ![#00CDCD] | `:bg_cyan`         | *46*  |
| `:light_gray`    | *37* | ![#E5E5E5] | `:bg_light_gray`   | *47*  |
| `:dark_gray`     | *90* | ![#4C4C4C] | `:bg_dark_gray`    | *100* |
| `:light_red`     | *91* | ![#FF0000] | `:bg_light_red`    | *101* |
| `:light_green`   | *92* | ![#00FF00] | `:bg_light_green`  | *102* |
| `:light_yellow`  | *93* | ![#FFFF00] | `:bg_light_yellow` | *103* |
| `:light_blue`    | *94* | ![#4682B4] | `:bg_light_blue`   | *104* |
| `:light_magenta` | *95* | ![#FF00FF] | `:bg_light_magenta`| *105* |
| `:light_cyan`    | *96* | ![#00FFFF] | `:bg_light_cyan`   | *106* |
| `:white`         | *97* | ![#FFFFFF] | `:bg_white`        | *107* |

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
