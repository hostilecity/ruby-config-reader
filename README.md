# ruby-config-reader

Create environment-specific `yaml` files with `erb` syntax!

```yaml
defaults: &defaults
  example_api:
    key: <%= ENV.fetch('EXAMPLE_API_KEY') %>
    host: https://example.com/
    sandbox: true
 
development:
  <<: *defaults
 
production:
  <<: *defaults
  example_api:
    sandbox: false
```

> You can use any arbitrary environment names

- Install the gem in your project:

```ruby
gem 'config-reader'
```

- Example usage:

```ruby
require 'config-reader'
reader = ConfigReader.new('path/to/config.yml', :production)
 
reader.config.example_api['host']
=> https://example.com/
 
reader.config.example_api['sandbox']
=> false
```

### Contribution

Feel free to [submit issues](https://github.com/hostilecity/ruby-config-reader/issues) or [help make it better](https://github.com/hostilecity/ruby-config-reader/pulls). 
