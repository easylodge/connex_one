lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/connex_one_client/version'

Gem::Specification.new do |spec|
  spec.name          = "connex_one_client"
  spec.version       = ConnexOneClient::VERSION
  spec.authors       = ["Matt Clarke"]
  spec.email         = ["matt.clarke85@gmail.com"]

  spec.summary       = %q{Connex One client}
  spec.description   = %q{Rails gem to interact with the Connex One}
  spec.homepage      = "https://github.com/easylodge/connex_one"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rails", "~> 7.0.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'shoulda-matchers', '~> 5.0'

  spec.add_dependency "httparty"
  spec.add_dependency "activesupport"
end
