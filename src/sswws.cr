# TODO: Write more documentation for `Sswws`
# @faustinoaq
require "http"
require "./sswws/art"
require "./sswws/options"

module Sswws
  options
  handlers = [HTTP::LogHandler.new, HTTP::ErrorHandler.new, HTTP::StaticFileHandler.new(@@dir)]
  server = HTTP::Server.new(handlers)
  address = server.bind_tcp(@@ip, @@port)
  puts ART
  puts "SSWWS is listening on http://#{address} and serving files"
  puts "Any issues? Report them on github.com/faustinoaq/sswws/issues"
  server.listen
end
