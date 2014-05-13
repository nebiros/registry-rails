# -*- encoding: utf-8 -*-
require File.expand_path('../lib/registry/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Juan Felipe Alvarez Saldarriaga"]
  gem.email         = ["nebiros@gmail.com"]
  gem.description   = <<-EOF
    A container for storing objects and values in the application as long as the request lives. Registry implements
    ruby's Singleton module, the same object is always available throughout your application.
  EOF
  gem.summary       = %q{A container for storing objects and values in the application as long as the request lives.}
  gem.homepage      = "https://github.com/nebiros/registry-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "registry-rails"
  gem.require_paths = ["lib"]
  gem.version       = Registry::Rails::VERSION
  gem.add_runtime_dependency "rails", "~> 4.1"
end
