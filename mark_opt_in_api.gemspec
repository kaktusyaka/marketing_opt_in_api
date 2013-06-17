# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mark_opt_in_api/version'

Gem::Specification.new do |spec|
  spec.name          = "mark_opt_in_api"
  spec.version       = MarkOptInApi::VERSION
  spec.authors       = ["Vitalya Shevtsov"]
  spec.email         = ["kaktusyaka@gmail.com"]
  spec.description   = "description"
  spec.summary       = "summary"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'httparty'
end
