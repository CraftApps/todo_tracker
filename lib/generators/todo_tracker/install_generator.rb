require 'rails/generators'

module TodoTracker

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def create_initializer_file
      begin
        template 'todo_tracker.rb', 'config/initializers/todo_tracker.rb'
      rescue 
        say 'There was an error creating initializer file.'
      end
    end

  end

end
