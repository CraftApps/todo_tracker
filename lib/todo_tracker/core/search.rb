require 'fileutils'
module TodoTracker

  class Search
    #put initializer-> file types + folders to cover + folders to escape

    def self.find_all_todos
      todo_list = []

      #Iterate through all the folders
      Dir["*/**/*.rb"].each do |file|
        if file != __FILE__
          open(file) do |f|
            index = 1
            f.each_line do |line|
              if line.include?("#TODO")
                t = TodoTracker::Todo.new(index, file, ((line.strip)[6..-1]))
                todo_list << t
              end
              index = index + 1
            end
          end
        end
      end
      todo_list
    end

  end
end