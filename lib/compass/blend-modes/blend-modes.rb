require 'compass/blend-modes/version'

module Compass
  module BlendModes
    Compass::Frameworks.register('blend-modes', :path => "#{File.dirname(__FILE__)}/../..")
  end
end