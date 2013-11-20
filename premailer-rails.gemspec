# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "premailer/rails/version"

Gem::Specification.new do |s|
  s.name        = "premailer-rails"
  s.version     = Premailer::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Philipe Fatio"]
  s.email       = ["philipe.fatio@gmail.com"]
  s.homepage    = "https://github.com/fphilipe/premailer-rails"
  s.summary     = %q{Easily create styled HTML emails in Rails.}
  s.description = %q{This gem brings you the power of the premailer gem to Rails
                     without any configuration needs. Create HTML emails,
                     include a CSS file as you do in a normal HTML document and
                     premailer will inline the included CSS.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'premailer', '~> 1.7', '>= 1.7.9'
  s.add_dependency 'actionmailer', '>= 3', '< 5'

  s.add_development_dependency 'rspec', '>= 3.0.0.beta1'
  s.add_development_dependency 'nokogiri'
  s.add_development_dependency 'hpricot' unless RUBY_PLATFORM == 'java'
  s.add_development_dependency 'coveralls'
end
