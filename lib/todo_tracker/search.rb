module TodoTracker

  class SearchBot

  	def find_all_in_between
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
  	
  end

end