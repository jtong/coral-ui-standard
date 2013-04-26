# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coral-ui-standard/version'

Gem::Specification.new do |gem|
  gem.name          = "coral-ui-standard"
  gem.version       = Coral::Ui::Standard::VERSION
  gem.authors       = ["jtong"]
  gem.email         = ["jtong.kata@gmail.com"]
  gem.description   = %q{coral ui plugin}
  gem.summary       = %q{figure out ui issue}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  #gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.bindir             = 'bin'
  gem.executables        = ['coral']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency("haml")
end
