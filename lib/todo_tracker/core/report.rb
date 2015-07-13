module TodoTracker
	class Report
		def self.generate_html_report
			# directory_regex = search_path
			# find_all_todos directory_regex
			puts "generate_html_report method called!!"
			#display progess bar after entering command. use progrss bar gem
			TodoTracker::Search.find_all_todos
			#TODO dfsdfsddsfsfsd
		end

		def self.generate_text_report
			# directory_regex = search_path
			# find_all_todos directory_regex
			puts "generate_text_report method called!!"
			#display progess bar after entering command. use progrss bar gem
			TodoTracker::Search.find_all_todos
		end
	end
end