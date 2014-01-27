# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'granita/version'

Gem::Specification.new do |spec|
  spec.name          = "granita"
  spec.version       = Granita::VERSION
  spec.authors       = ["Adam Fabicki"]
  spec.email         = ["adam.fabicki@gmail.com"]
  spec.description   = %q{A library for importing ActiveRecord objects from CSV}
  spec.summary       = %q{Granita is an interface for concisely loading ActiveRecord objects from CSV files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
