# Vk

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'vk'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install vk

## Usage

Create vk config file into config/initializers => config/initializers/vk.rb and put into it base settings (vk group_id) like this:

    Vk.setup do |config|
      config.account_id = '-<some_vk_group_id>'
      # or if you'd like to get info from user page user_id (without '-')
      # config.account_id = '-<some_vk_user_id>'
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
