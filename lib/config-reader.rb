# frozen_string_literal: true
require 'erb'
require 'ostruct'
require 'yaml'

class ConfigReader < OpenStruct
  def self.load(path, env)
    contents = IO.read(path)
    processed = ERB.new(contents).result
    new(YAML.load(processed)[env.to_s])
  end
end
