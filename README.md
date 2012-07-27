# Registry::Rails

A container for storing objects and values in the application as long as the request lives. Registry implements
ruby's Singleton module, the same object is always available throughout your application.

## Installation

Add this line to your application's Gemfile:

    gem "registry-rails"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install registry-rails

## Usage

Set objects and values that you want to retrieve later.

````ruby
register = Registry::Rails::Register.instance
register.set(:foo, "bar")
register.set(:colors, ["green", "white", "blue"])
````

You can get a `default value` if the key doesn't exist, or if you want that isn't `nil`.

````ruby
register = Registry::Rails::Register.instance
register.get(:foo) #=> "bar"
register.get(:colors) #=> ["green", "white", "blue"]
register.get(:baz, "default_value") #=> "default_value"
````

The original issue was this: How to get the `current_user` data inside a model?, so I ended up
with this gem, so, now the example.

````ruby
class ApplicationController < ActionController::Base
  before_filter :set_current_user

  def set_current_user
    register = Registry::Rails::Register.instance
    register.set(:current_user, current_user)
  end
end
````

````ruby
class Foo < ActiveRecord::Base
  def self.do_something(options = {})
    register = Registry::Rails::Register.instance
    register.get(:current_user)
  end
end
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
