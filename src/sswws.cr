# TODO: Write more documentation for `Sswws`
# @faustinoaq
require "http"
require "option_parser"
require "./sswws/art"
require "./sswws/parser"

module Sswws
  server = HTTP::Server.new([HTTP::LogHandler.new, HTTP::ErrorHandler.new, HTTP::StaticFileHandler.new(@@directory)])

  address = server.bind_tcp(@@ip, @@port)
  puts ART
  puts "SSWWS is listening on http://#{address} and serving files in current path ."
  puts "Any issues? Report them on github.com/faustinoaq/sswws/issues"
  server.listen
end
