# Clash Royale Ruby Gem to connect to [martincarrera's](https://github.com/martincarrera/clash-royale-api) [Clash Royale API](http://www.clashapi.xyz/)

## Installation

```ruby
gem 'clashroyale'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clashroyale

## Usage

Use this gem to get a inteface with Clash Royale API
```ruby
 clashdata = ClashData.new
 clashdata.cards      #Retrives a array of All Cards
 clashdata.chests     #Retrives a array of All Cards
 clashdata.arenas     #Retrives a array of All Cards
 clashdata.players    #Retrives a array of All Cards
 ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andersonanderson/clashroyale. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

This content is not affiliated with, endorsed, sponsored, or specifically approved by Supercell and Supercell is not responsible for it. For more information see Supercell’s Fan Content Policy.

