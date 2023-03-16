# TODO: Write more documentation for `Sswws`
# @faustinoaq
require "http"
require "option_parser"
require "./sswws/art"
require "./sswws/options"

module Sswws
  options
  handlers = [HTTP::LogHandler.new, HTTP::ErrorHandler.new, HTTP::StaticFileHandler.new(@@directory)]
  server = HTTP::Server.new(handlers)
  address = server.bind_tcp(@@ip, @@port)
  puts ART
  puts "SSWWS is listening on http://#{address} and serving files in current path ."
  puts "Any issues? Report them on github.com/faustinoaq/sswws/issues"
  server.listen
end
