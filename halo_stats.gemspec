# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'halo_stats/version'

Gem::Specification.new do |spec|
  spec.name          = "halo_stats"
  spec.version       = HaloStats::VERSION
  spec.authors       = ["Kyle Lucas"]
  spec.email         = ["kglucas93@gmail.com"]
  spec.summary       = %q{A stats gem for Halo 5.}
  spec.description   = %q{}
  spec.homepage      = "http://github.com/kyelgrantlucas/halo_stats"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "takeout", "~> 0.1.2"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "webmock"

  spec.add_development_dependency "codeclimate-test-reporter"

end