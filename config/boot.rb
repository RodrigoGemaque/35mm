ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.




# Superconfig configuration fnando gem

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)

# Set up gems listed in the Gemfile.
require "bundler/setup"
# Load configuration.
require "superconfig/dotenv"
require File.expand_path("../config", __FILE__)