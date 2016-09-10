# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/munin/version'

Gem::Specification.new do |spec|
  spec.name          = 'itamae-plugin-recipe-munin'
  spec.version       = Itamae::Plugin::Recipe::Munin::VERSION
  spec.authors       = ['pataiji']
  spec.email         = ['pataiji@gmail.com']

  spec.summary       = 'Itamae plugin to install munin'
  spec.description   = 'Itamae plugin to install munin'
  spec.homepage      = 'https://github.com/pataiji/itamae-plugin-recipe-munin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
end
