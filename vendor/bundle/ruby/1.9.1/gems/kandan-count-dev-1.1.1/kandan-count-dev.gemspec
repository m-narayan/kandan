# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kandan-count-dev/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kandan App"]
  gem.email         = ["kandanapp@gmail.com"]
  gem.description   = %q{Gem to count Kandan installations on development environments}
  gem.summary       = %q{Gem to count Kandan installations on development environments}
  gem.homepage      = "https://github.com/kandanapp/kandan-count-dev"
  
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "kandan-count-dev"
  gem.require_paths = ["lib"]
  gem.version       = Kandan::Count::Dev::VERSION

  gem.post_install_message = <<-DESC

  \e[32mWelcome to Kandan, the slickest chat app out there!
  
  Don't forget to run kandan:bootstrap\e[0m

DESC

  gem.add_development_dependency 'rake'
end
