require "todo_tracker/version"

module TodoTracker
  # Your code goes here...
  #core logic
  def self.find_all_todos directory_regex
		Dir["*.rb"].each do |file|
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
		list = find_all_todos
		#display progess bar after entering command. use progrss bar gem
	end

	def generate_text_report
		
	end
end
