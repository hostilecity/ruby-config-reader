# ruby-config-reader

Create environment-specific `yaml` files with `erb` syntax!

```yaml
defaults: &defaults
  api_key: <%= ENV.fetch('EXAMPLE_API_KEY') %>
  api_host: https://example.com/
  api_sandbox: true
 
development:
  <<: *defaults
 
production:
  <<: *defaults
  api_sandbox: false
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
 
config.api_host
=> https://example.com/
 
config.api_sandbox
=> false
```
