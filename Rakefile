# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'config-reader/version'

desc "Release version #{ConfigReader::VERSION} of the gem"
task :release do
  try "git tag -a v#{ConfigReader::VERSION} -m 'Tagging #{ConfigReader::VERSION}'"
  try 'git push --tags'

  try 'gem build config-reader.gemspec'
  try "gem push config-reader-#{ConfigReader::VERSION}.gem"
  try "rm config-reader-#{ConfigReader::VERSION}.gem"
end
