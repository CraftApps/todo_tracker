require "todo_tracker/version"
require 'require_all'
require 'fileutils'

module TodoTracker
  # Your code goes here...
  #core logic

  class << self
    attr_accessor :search_path, :output_type
  end


  # The git branch that is used for linking in the stack trace
  #
  # @return [String] Defaults to 'master' if not set
  def self.search_path
    @search_path ||= 'template'
  end

  # The web url for GitHub. This is only interesting for Enterprise
  # users
  #
  # @return [String] Defaults to 'https://github.com' if not set
  def self.output_type
    @output_type ||= 'html'
  end

 #  DEFAULT_CONFIG = File.join(File.dirname(__FILE__), "..", "..", "todo_tracker.yml")
 #  # generate configuration yaml file.
 #  def generate
 #    FileUtils.cp DEFAULT_CONFIG, File.join(@path, 'config/rails_best_practices.yml')
 #  end



  def self.find_all_todos directory_regex
		directory_regex.each do |file|
		  if file != __FILE__
		    open(file) do |f|
		      index = 1
		      f.each_line do |line|
		        puts "Filename: #{file} \n Line: #{index} \n Pending Todo: #{line[6..-1]} \n" if line.include?("#TODO")
		        index = index + 1
		      end
		    end
		  end
		end
	end

	def generate_html_report
		directory_regex = search_path
		find_all_todos directory_regex
		#display progess bar after entering command. use progrss bar gem
	end

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

	def self.configure(&block)
    yield self
  end
end
