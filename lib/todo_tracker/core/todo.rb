module TodoTracker

  class Todo
    attr_accessor :line_no, :file_name, :file_path

    # setter methods
    def setLineNo=(value)
      @line_no = value
    end
    def setFileName=(value)
      @file_name = value
    end
    def setFilePath=(value)
      @file_path = value
    end



    # accessor methods
    def getLineNo=(value)
      @line_no
    end
    def getFileName=(value)
      @file_name
    end
    def getFilePath=(value)
      @file_path
    end
  end

end