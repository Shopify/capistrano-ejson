# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-ejson"
  spec.version       = "1.1.0"
  spec.authors       = ["Bouke van der Bijl"]
  spec.email         = ["bouke@shopify.com"]
  spec.description = spec.summary = %q{Automatic EJSON decryption for Capistrano}
  spec.homepage      = "https://github.com/Shopify/capistrano-ejson"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.1'
  spec.add_dependency 'ejson', '~> 1.0', '>= 1.0.0'

  spec.add_development_dependency "rake", "~> 10.0"
end
