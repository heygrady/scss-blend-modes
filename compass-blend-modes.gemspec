# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass/blend-modes/version"

Gem::Specification.new do |s|
  s.name          = 'compass-blend-modes'
  s.version       = Compass::BlendModes::VERSION
  s.platform      = Gem::Platform::RUBY
  s.summary       = "Using standard color blending functions in Sass."
  s.description   = "Using standard color blending functions in Sass."
  s.homepage      = "https://github.com/heygrady/scss-blend-modes"
  s.authors       = ["Grady Kuhnline"]
  s.email         = ["github@heygrady.net"]
  s.license       = 'MIT'

  s.has_rdoc      = false
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("compass")
end