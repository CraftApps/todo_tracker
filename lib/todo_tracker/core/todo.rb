module TodoTracker

  class Todo
    attr_accessor :line_no, :file_name, :content

    def initialize(line_no, file_name, content)
      self.line_no = line_no
      self.file_name = file_name
      self.content = content
    end

  end

end