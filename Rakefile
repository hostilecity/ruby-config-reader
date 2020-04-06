# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'config-reader/version'

desc "Release version #{ConfigReader::VERSION} of the gem"
task :release do
  system "git tag -a v#{ConfigReader::VERSION} -m 'Tagging #{ConfigReader::VERSION}'"
  system 'git push --tags'

  system 'gem build config-reader.gemspec'
  system "gem push config-reader-#{ConfigReader::VERSION}.gem"
  system "rm config-reader-#{ConfigReader::VERSION}.gem"
end
