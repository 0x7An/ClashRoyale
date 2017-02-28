# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clashroyale/version'

Gem::Specification.new do |spec|
  spec.name          = "clashroyale"
  spec.version       = Clashroyale::VERSION
  spec.authors       = ["Anderson da silva lima"]
  spec.email         = ["sqacecadet@gmail.com"]

  spec.summary       = %q{Ruby interface to Clash Royale API}
  spec.description   = %q{Ruby interface to Clash Royale API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "httparty",  "~> 0.13.7"
end
