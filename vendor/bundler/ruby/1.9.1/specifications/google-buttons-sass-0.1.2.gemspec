# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google-buttons-sass"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pete Brousalis, Thomas McDonald, Tim O'Donnell"]
  s.date = "2012-07-16"
  s.description = "Tim O'Donnell's CSS3 Google Buttons coverted to SASS including images and javascript. This gem is based on Thomas McDonald's bootstrap-sass gem."
  s.email = "brousapg@gmail.com"
  s.homepage = "http://github.com/brousalis/google-buttons-sass"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Tim O'Donnell's CSS3 Google Buttons coverted to SASS and ready for include. Based on Thomas McDonald's bootstrap-sass gem."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 3.1"])
    else
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<sass-rails>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<sass-rails>, ["~> 3.1"])
  end
end
