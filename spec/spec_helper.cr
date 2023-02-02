require "spec"
require "http/client"

# require "../src/sswws"

module Sswws
  extend self

  def server_listen
    begin
      Process.new "./bin/sswws.exe"
    rescue File::NotFoundError
      puts "ERROR: Executable not available please run <shards build> first."
    end
  end

  def server_stop
    `taskkill /im sswws.exe /f`
  end
end
