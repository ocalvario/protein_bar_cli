require_relative "./protein_bar_cli/version"
require_relative "./protein_bar_cli/cli"
require_relative "./protein_bar_cli/scraper"
require_relative "./protein_bar_cli/bar"

require "pry"
require 'nokogiri'
require 'open-uri'

module ProteinBarCli
  class Error < StandardError; end
  # Your code goes here...
end

