# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'isdoc/version'

Gem::Specification.new do |spec|
  spec.name          = "isdoc"
  spec.version       = Isdoc::VERSION
  spec.authors       = ["Premysl Donat"]
  spec.email         = ["pdonat@seznam.cz"]

  spec.summary       = 'Ruby lib for creating and parsing ISDOC documents'
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/Masa331/isdoc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'rxsd'
  spec.add_dependency 'libxml-ruby'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
