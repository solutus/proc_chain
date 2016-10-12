# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chain/version'

Gem::Specification.new do |spec|
  spec.name          = "chain"
  spec.version       = Chain::VERSION
  spec.authors       = ["Sergey Staskov"]
  spec.email         = ["sergey.staskov@dellin.ru"]

  spec.summary       = %q{Simple gem to build chains without redundant variable naming.}
  spec.description   = %q{Simple gem to build chains without redundant variable naming.}
  spec.homepage      = "https://github.com/solutus/chain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
