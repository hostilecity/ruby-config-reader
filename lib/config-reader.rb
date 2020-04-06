# frozen_string_literal: true
require 'erb'
require 'ostruct'
require 'yaml'

# Process the input as ERB and then YAML and return results as OpenStruct
class ConfigReader
  attr_reader :file_path, :environment

  def initialize(file_path, environment)
    @file_path = file_path
    @environment = environment.to_s
  end

  def config
    @config ||= OpenStruct.new(yaml)
  end

  private

  def yaml
    YAML.load(erb)[environment]
  end

  def erb
    ERB.new(input).result
  end

  def input
    IO.read(file_path)
  end
end
