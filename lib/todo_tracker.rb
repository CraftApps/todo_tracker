module TodoTracker
  # Your code goes here...
  #core logic
  #TODO bhai abhi bohot baki h
  class << self
    attr_accessor :search_path, :output_type
  end

  #TODO hello world
  # The git branch that is used for linking in the stack trace
  #
  # @return [String] Defaults to 'master' if not set
  def self.search_path
    @search_path ||= Dir["*.rb"]
  end

  # The web url for GitHub. This is only interesting for Enterprise
  # users
  #
  # @return [String] Defaults to 'https://github.com' if not set
  def self.output_type
    @output_type ||= 'html'
  end

	def self.configure(&block)
    puts "i m in"
    yield self
  end
end

require "todo_tracker/version"
require "generators/todo_tracker/install_generator"
require "todo_tracker/core/todo"
require "todo_tracker/core/search"
require "todo_tracker/core/report"
require "todo_tracker/command"
require 'fileutils'
