require "todo_tracker/version"
require "generators/todo_tracker/install_generator"
require "todo_tracker/core/todo"
require "todo_tracker/core/search"
require "todo_tracker/core/report"
require "todo_tracker/command"
require 'fileutils'

module TodoTracker
  # Your code goes here...
  #core logic
  #TODO bhai abhi bohot baki h
  class Base
    attr_accessor :search_path, :output_type
  

    #TODO hello world
    # The git branch that is used for linking in the stack trace
    #
    # @return [String] Defaults to 'master' if not set
    def search_path
      @search_path ||= 'template'
    end

    # The web url for GitHub. This is only interesting for Enterprise
    # users
    #
    # @return [String] Defaults to 'https://github.com' if not set
    def output_type
      @output_type ||= 'html'
    end

   #  DEFAULT_CONFIG = File.join(File.dirname(__FILE__), "..", "..", "todo_tracker.yml")
   #  # generate configuration yaml file.
   #  def generate
   #    FileUtils.cp DEFAULT_CONFIG, File.join(@path, 'config/rails_best_practices.yml')
   #  end

  	# def generate_html_report
  	# 	directory_regex = search_path
  	# 	find_all_todos directory_regex
  	# 	#display progess bar after entering command. use progrss bar gem
  	# end

  	# # output errors with html format.
   #    def output_html_errors
   #      require 'erubis'
   #      template = @options["template"] ? File.read(File.expand_path(@options["template"])) : File.read(File.join(File.dirname(__FILE__), "..", "..", "assets", "result.html.erb"))

   #      File.open(@options["output-file"], "w+") do |file|
   #        eruby = Erubis::Eruby.new(template)
   #        file.puts eruby.evaluate(
   #          :todo_list => find_all_todos
   #        )
   #      end
   #    end

  	# def generate_text_report
  		
  	# end

  	def configure(&block)
      yield self
      puts self.inspect
      puts "i am configure"
    end
  end

end
