# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ClashRoyale/version'

Gem::Specification.new do |spec|
  spec.name          = "ClashRoyale"
  spec.version       = ClashRoyale::VERSION
  spec.authors       = ["Anderson da silva lima"]
  spec.email         = ["sqacecadet@gmail.com"]

  spec.summary       = %q{A interface to Clash Royale API}
  spec.description   = %q{A interface to Clash Royale API}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
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
end
