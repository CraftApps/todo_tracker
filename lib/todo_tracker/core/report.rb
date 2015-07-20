require 'erubis'
module TodoTracker
	class Report
		def self.generate_html_report
			array = TodoTracker::Search.find_all_todos_model
	      template = File.read(File.join(this_path,".", "..", "..", "..","assets", "result.html.erb"))


	      File.open("todos.html", "w+") do |file|
	        eruby = Erubis::Eruby.new(template)
	        file.puts eruby.evaluate(
	          todos: array
	        )
	    	end
			# render "./../../../assets/result.html.erb"
			# File.open('todo.html', 'w') do |output_file|
  	# 		# output_file.puts "Pending TODO's:\n\n"
  	# 		array.each do |item|
  	# 			output_file.puts item.file_name
  	# 			output_file.puts item.line_no
  	# 			output_file.puts "#{item.content}"
  	# 		end
  	# 	end
			#TODO dfsdfsddsfsfsd
			puts "report has been generated!! Thanks for using."
		end

		def self.this_path
			File.dirname(__FILE__)
		end

		def self.generate_text_report
			# directory_regex = search_path
			# find_all_todos directory_regex
			# puts "generate_text_report method called!!"
			#display progess bar after entering command. use progrss bar gem
			TodoTracker::Search.find_all_todos
		end
	end
end