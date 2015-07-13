# encoding: utf-8
require "optparse"

# Usage: todo_tracker [options]
#        --text                      Text Output
#        --html                      Html Output

options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: todo_tracker [options]"

  opts.on("--text") do
    options["output_type"] = 'text'
  end

  opts.on("--html") do
    options["output_type"] = 'html'
  end

  opts.parse!
end

if options["generate"]
  TodoTracker::generate_html_report
else
  TodoTracker::generate_html_report
end