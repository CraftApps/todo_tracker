require 'erubis'
module TodoTracker
  class Report

    def self.generate_html_report

      #Find all the todos
      todo_list = TodoTracker::Search.find_all_todos

      #Template for showing todo
      template = File.read(File.join(this_path,".", "..", "..", "..","assets", "result.html.erb"))

      #Push data into template using erubis
      File.open("todos.html", "w+") do |file|
        eruby = Erubis::Eruby.new(template)
        file.puts eruby.evaluate(
          todos: todo_list
        )
      end

      #Status at the end with a nice greeting
      puts "HTML Report has been generated!! Thanks for using TodoTracker."
    end

    def self.this_path
      File.dirname(__FILE__)
    end

    def self.generate_text_report

      #Find all the todos
      todo_list = TodoTracker::Search.find_all_todos

      #Creating text report
      File.open('todos.txt', 'w') do |output_file|
        output_file.puts "Pending TODO's:\n\n"
        index = 1

        todo_list.each do |todo|
          output_file.puts "Todo (#{index}): #{todo.content} \n Line: #{todo.line_no} \n Filename: #{todo.file_name} \n\n"
          index = index + 1
        end

        #Timestamp just in case you need it
        output_file.puts "\n\nGenerated on: #{Time.now.utc.strftime('%d-%b-%Y-%I:%M %p')} UTC"
      end

      #Status at the end with a nice greeting
      puts "Text Report has been generated!! Thanks for using TodoTracker."
    end

  end
end