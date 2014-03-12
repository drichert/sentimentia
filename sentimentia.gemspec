# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sentimentia/version'

Gem::Specification.new do |spec|
  spec.name          = "sentimentia"
  spec.version       = Sentimentia::VERSION
  spec.authors       = ["Dan Richert"]
  spec.email         = ["dan.richert@gmail.com"]
  spec.description   = %q{Filter sentences by a range of sentiment analysis values}
  spec.summary       = %q{Filter sentences by sentiment}
  spec.homepage      = "https://github.com/sentimentia"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "sentimental"
  spec.add_dependency "treat"
  spec.add_dependency "stanford-core-nlp"
end
