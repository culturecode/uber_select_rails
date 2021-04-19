# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uber_select_rails/version'

`git submodule update` # Ensure we've checked the correct submodule files

Gem::Specification.new do |spec|
  spec.name          = "uber_select_rails"
  spec.version       = UberSelectRails::VERSION
  spec.authors       = ["Nicholas Jakobsen"]
  spec.email         = ["nicholas.jakobsen@gmail.com"]

  spec.summary       = %q{A Rails gem containing a javascript plugin that adds a layer of UI goodness overtop of basic HTML select elements}
  spec.homepage      = "https://github.com/culturecode/uber_select_rails"

  spec.files         = `git ls-files -z --recurse-submodules`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
