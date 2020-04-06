# frozen_string_literal: true
require 'erb'
require 'ostruct'
require 'yaml'

class ConfigReader
  # Process IO as ERB and then YAML
  # and return results as OpenStruct
  # @param [String] path
  # @param [String,Symbol] env
  # @return [OpenStruct]
  def self.load(path, env)
    OpenStruct.new(YAML.load(ERB.new(IO.read(path)).result)[env.to_s])
  end
end
