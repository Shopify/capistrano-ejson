# Capistrano::EJSON

This gem makes it easy to use [ejson](https://github.com/Shopify/ejson) in applications that are deployed through Capistrano.

## Installation

Add this lines to your application's Gemfile:

```ruby
gem 'capistrano-ejson', '~> 0.0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-ejson

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/ejson'
```

The task `ejson:upload_config_files` will run after `deploy:updated`.

By default any file ending in `.ejson` will be decrypted and uploaded. You can set which files to upload manually by doing

```ruby
set :ejson_files, %w{config/keys.ejson}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
