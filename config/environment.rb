# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rdolphin::Application.initialize!
Mime::Type.register "text/xml", :mml
Mime::Type.register "text/plain", :csv
