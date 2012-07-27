# -*- encoding: utf-8 -*-
require File.expand_path('../lib/registry-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Juan Felipe Alvarez Saldarriaga"]
  gem.email         = ["nebiros@gmail.com"]
  gem.description   = %q{Registry singleton object, to store anything you want as long as the request lives}
  gem.summary       = %q{Registry singleton object}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "registry-rails"
  gem.require_paths = ["lib"]
  gem.version       = Registry::Rails::VERSION
end
