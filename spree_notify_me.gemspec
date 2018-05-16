# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_notify_me/version'

Gem::Specification.new do |spec|
  spec.name          = "spree_notify_me"
  spec.version       = SpreeNotifyMe::VERSION
  spec.authors       = ["Noel"]
  spec.email         = ["noel@2bedigital.com"]

  spec.summary       = %q{Create a list of products that the customer wishes to know when it will be available.}
  spec.description   = %q{Create a list of products that the customer wishes to know when it will be available.}
  spec.homepage      = "https://www.github.com/2bedigital/spree_notify_me"

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'spree_core', '~> 2.4.10'
  spec.add_dependency 'spree_backend', '~> 2.4.10'
  spec.add_dependency 'spree_frontend', '~> 2.4.10'
  spec.add_dependency 'spree_wishlist', '2.2'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sass-rails"
end
