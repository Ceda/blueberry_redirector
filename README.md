# BlueberryRedirector
Short description and motivation.

## Usage
How to use my plugin.

## Installation
1. Add this to your Gemfile and then `bundle install`:

    ```ruby
    gem 'blueberry_redirector'
    ```

2. `$ rake redirector:install:migrations`
3. `$ rake db:migrate`
4. Customize
    Initializer
    ```ruby
    BlueberryRedirector.config do |config|
      # config.admin_controller = 'Admin::BaseController'
    end
    ```

    Add link to your layout
    ```ruby
    = link_to t('.redirector'), admin_redirector.root_path
    ```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


rake blueberry_redirector:install:migrations
