# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sasuke/version'

Gem::Specification.new do |spec|
  spec.name          = "sasuke"
  spec.version       = Sasuke::VERSION
  spec.authors       = ["shubhs2050"]
  spec.email         = ["shubham@rubyeffect.com"]

  spec.summary       = %q{Let's see what we have}
  spec.description   = %q{This gem you can use to restrict the user to a particular tab for performing the request and then only move to the next tab after the request from a tab is fullfilled.
}
  spec.homepage      = "https://github.com/shubhs2050/sasuke"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
