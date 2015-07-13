TodoTracker.configure do |config|
  # Path to search for ToDo's
  config.search_path = ['Dir["*.rb"]']

  # The output type of file
  config.output_type = ['html']
end
