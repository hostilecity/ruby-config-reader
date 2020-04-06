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
config = ConfigReader.load('path/to/config.yml', :production)
 
config.example_api['host']
=> https://example.com/
 
config.example_api['sandbox']
=> false
```
