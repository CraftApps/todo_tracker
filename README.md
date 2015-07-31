# TodoTracker

TodoTracker is a simple gem, which is used for maitaining a list of pending TODO's from your code. 
You can generate html as well as text report to keep track. Currently it scans your entire project folder, but i am working on next release where you would be able to blacklist & whitelist specific files & folder too.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'todo_tracker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install todo_tracker

## Usage

To generate text report
```ruby
todo_tracker --html
```

To generate html report
```ruby
todo_tracker --text
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CraftApps/todo_tracker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

