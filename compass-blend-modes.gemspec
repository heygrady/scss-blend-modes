# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{compass-blend-mode}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Grady Kuhnline"]
  s.date = %q{2011-10-06}
  s.description = %q{Using standard color blending functions in Sass.}
  s.email = %w{github@heygrady.net}
  s.has_rdoc = false
  s.files = Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")
  s.homepage = %q{https://github.com/heygrady/scss-blend-modes}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{compass-blend-modes}
  s.rubygems_version = %q{0.0.2}
  s.summary = %q{Using standard color blending functions in Sass.}
  s.add_dependency(%q<compass>, ["~> 0.12"])
end