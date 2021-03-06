# JnEmployees

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jn_employees`. To experiment with that code, run `bin/console` for an interactive prompt.

Wrapper for querying the Chicago Government api for chicago employees.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jn_employees'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jn_employees

## Usage

To retrieve all government employees from chicago, use the following example.

```ruby
require 'jn_employees'

employees = JnEmployees::Employee.all
```

To search gevernment employees for a particular term use the following example

```ruby
water_employees = JnEmployees::Employee.search("Water")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jn_employees.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

