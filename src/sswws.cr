# TODO: Write more documentation for `Sswws`
# @faustinoaq
require "http"
require "option_parser"

ART = <<-'ART'

      ___           ___           ___           ___           ___
     /  /\         /  /\         /__/\         /__/\         /  /\
    /  /:/_       /  /:/_       _\_ \:\       _\_ \:\       /  /:/_
   /  /:/ /\     /  /:/ /\     /__/\ \:\     /__/\ \:\     /  /:/ /\
  /  /:/ /::\   /  /:/ /::\   _\_ \:\ \:\   _\_ \:\ \:\   /  /:/ /::\
 /__/:/ /:/\:\ /__/:/ /:/\:\ /__/\ \:\ \:\ /__/\ \:\ \:\ /__/:/ /:/\:\
 \  \:\/:/~/:/ \  \:\/:/~/:/ \  \:\ \:\/:/ \  \:\ \:\/:/ \  \:\/:/~/:/
  \  \::/ /:/   \  \::/ /:/   \  \:\ \::/   \  \:\ \::/   \  \::/ /:/
   \__\/ /:/     \__\/ /:/     \  \:\/:/     \  \:\/:/     \__\/ /:/
     /__/:/        /__/:/       \  \::/       \  \::/        /__/:/
     \__\/         \__\/         \__\/         \__\/         \__\/


ART

module Sswws
  VERSION = "0.1.0"
  sport = 8080
  sip = "127.0.0.1"

  OptionParser.parse do |parser|
    parser.banner = "Usage: Sswws [arguments]"
    parser.on("-v", "--version", "Super Simple Windows Web Server version") do
      puts VERSION
      exit
    end
    parser.on("-p PORT", "--port=PORT", "Specifies the port to run on (default 8080)") { |port| sport = port.to_i }
    parser.on("-i IP", "--ip=IP", "Specifies the ip to run on (default 127.0.0.1)") { |ip| sip = ip }
    parser.on("-h", "--help", "Show this help") do
      puts parser
      exit
    end
    parser.invalid_option do |flag|
      STDERR.puts "ERROR: #{flag} is not a valid option."
      STDERR.puts parser
      exit(1)
    end
  end

  server = HTTP::Server.new([
    HTTP::LogHandler.new,
    HTTP::ErrorHandler.new,
    HTTP::StaticFileHandler.new("."),
  ])

  address = server.bind_tcp(sip, sport)
  puts ART
  puts "SSWWS is listening on http://#{address} and serving files in current path ."
  puts "Any issues? Report them on github.com/faustinoaq/sswws/issues"
  server.listen
end
