require 'fileutils'
module TodoTracker

  class Search
    #put initializer-> file types + folders to cover + folders to escape

    def self.find_all_todos
      todo_list = []

      #Iterate through all the folders
      TodoTracker.search_path.each do |file|

        if File.file?(file) && file != __FILE__
          open(file) do |f|
            index = 1
            f.each_line do |line|
              if line.include?("#TODO")
                line = line.strip!
                t = TodoTracker::Todo.new(index, file, (line[(line.index('#TODO')+6)..-1]))
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