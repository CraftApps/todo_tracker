# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo_tracker/version'

Gem::Specification.new do |s|
  s.name          = "todo_tracker"
  s.version       = TodoTracker::VERSION
  s.authors       = ["Tushar Maroo"]
  s.email         = ["tusharmaroo@gmail.com"]

  s.summary       = %q{Elegantly keeps tracks of TODO's in your code.}
  s.description   = %q{TodoTracker is a gem is written to help developers. It keeps track of their todos.}
  s.homepage      = "https://github.com/CraftApps/todo_tracker"
  s.license       = "MIT"

  s.files         = Dir['{app,config,db,lib,assets}/**/*']
  s.bindir        = "bin"
  s.executables   = 'todo_tracker'
  s.require_paths = ["lib","assets","bin"]

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency 'actionpack'
  s.add_development_dependency 'activesupport'
  s.add_development_dependency 'railties'
  s.add_dependency 'erubis'

  s.required_ruby_version = '>= 1.9.3'

  s.post_install_message = <<-POST_INSTALL_MESSAGE
  #{"*" * 100}
    todo_tracker is a development assisting tool to track the pending todo's in your application code.
    Let me know about issues/enhancements on github https://github.com/CraftApps/todo_tracker
    Enjoy!
        Tushar Maroo (tusharmaroo@gmail.com)
  #{"*" * 100}
    POST_INSTALL_MESSAGE
end
