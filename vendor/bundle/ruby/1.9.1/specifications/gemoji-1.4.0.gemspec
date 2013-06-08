# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gemoji"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["GitHub"]
  s.date = "2013-01-15"
  s.description = "Emoji assets"
  s.email = "support@github.com"
  s.homepage = "https://github.com/github/gemoji"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Emoji Assets"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
