# Concolor
:computer:

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'concolor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install concolor

## Usage

```ruby
puts 'Some text'.style(:bold, :red)
puts 'Some text'.style(:bold, :green, :red_bg)

# Text color:
:black
:red
:green
:yellow
:blue
:magenta
:cyan
:white

# Text style:
:bold
:underline
    
# Text background color:
:black_bg
:red_bg
:green_bg
:yellow_bg
:blue_bg
:magenta_bg
:cyan_bg
:white_bg
```
