require 'fileutils'
module TodoTracker

  class Search



  	def self.find_all_todos
  		puts "i got first"
  		puts TodoTracker.search_path
  		TodoTracker.search_path.each do |file|
  			puts "fdsffsdfdsdddddd"
  			puts file
			  if file != __FILE__
			  	puts "fdsffsdfdsdddddd2"
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
  	
  end

end