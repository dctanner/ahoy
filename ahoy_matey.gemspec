# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ahoy/version'

Gem::Specification.new do |spec|
  spec.name          = "ahoy_matey"
  spec.version       = Ahoy::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.summary       = %q{Simple, powerful visit tracking for Rails}
  spec.description   = %q{Simple, powerful visit tracking for Rails}
  spec.homepage      = "https://github.com/ankane/ahoy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "addressable"
  spec.add_dependency "browser", ">= 0.4.0"
  spec.add_dependency "geocoder"
  spec.add_dependency "referer-parser"
  spec.add_dependency "user_agent_parser"
  spec.add_dependency "request_store"
  spec.add_dependency "uuidtools"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
