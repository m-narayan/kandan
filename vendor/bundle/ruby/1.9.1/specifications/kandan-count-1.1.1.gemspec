# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "kandan-count"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kandan App"]
  s.date = "2013-03-18"
  s.description = "Gem to count Kandan installations"
  s.email = ["kandanapp@gmail.com"]
  s.homepage = "https://github.com/kandanapp/kandan-count"
  s.post_install_message = "\n  \e[32mWelcome to Kandan, the slickest chat app out there!\n  \n  Don't forget to run kandan:bootstrap\e[0m\n\n"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Gem to count Kandan installations"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
