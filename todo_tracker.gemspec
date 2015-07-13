# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo_tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "todo_tracker"
  spec.version       = TodoTracker::VERSION
  spec.authors       = ["Tushar Maroo"]
  spec.email         = ["tusharmaroo@gmail.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://www.tusharmaroo.com"
  spec.license       = "MIT"

  spec.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile', 'README.md'] 
  spec.bindir        = "bin"
  spec.executables   = 'todo_tracker'
  spec.require_paths = ["lib","assets","bin"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'actionpack', '~> 4.0'
  spec.add_development_dependency 'activesupport', '~> 4.0'
  spec.add_development_dependency 'railties', '~> 4.0'

  spec.post_install_message = <<-POST_INSTALL_MESSAGE
  #{"*" * 80}
    todo_tracker is a development assisting tool to track the pending todo's in your application code.
    Let me know about issues/enhancements on github https://github.com/CraftApps/todo_tracker
    Enjoy!
        Tushar Maroo (tusharmaroo@gmail.com)
  #{"*" * 80}
    POST_INSTALL_MESSAGE
end
