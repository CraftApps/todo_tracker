require 'fileutils'
module TodoTracker

  class Search



  	def self.find_all_todos
  		# puts "i got first"
  		File.open('todo.txt', 'w') do |output_file|
  			output_file.puts "Pending TODO's:\n\n"
	  		Dir["*/**/*.rb"].each do |file|
	  			# puts "fdsffsdfdsdddddd"
	  			# puts file
				  if file != __FILE__
				  	# puts "fdsffsdfdsdddddd2"
				    open(file) do |f|
				      index = 1
				      f.each_line do |line|
				        output_file.puts "Filename: #{file} \n Line: #{index} \n Pending Todo: #{(line.strip)[6..-1]} \n\n" if line.include?("#TODO")
				        index = index + 1
				      end
				    end
				  end
				end
			end
			puts "report has been generated!! Thanks for using."
  	end
  	
  end

end