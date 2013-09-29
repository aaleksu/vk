# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vk/version'

Gem::Specification.new do |gem|
  gem.name          = "vk"
  gem.version       = Vk::VERSION
  gem.authors       = ["Alex"]
  gem.email         = ["a.aleksu@gmail.com"]
  gem.description   = %q{"Doing request to VK API"}
  gem.summary       = %q{Get info from VK pages}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
