module Sswws
  VERSION = "0.1.0"
  @@port = 8080
  @@ip = "0.0.0.0"
  @@directory = "."

  OptionParser.parse do |parser|
    parser.banner = "Usage: Sswws [arguments]"
    parser.on("-v", "--version", "Super Simple Windows Web Server version") do
      puts VERSION
      exit
    end
    parser.on("-p PORT", "--port=PORT", "Specifies the port to run on (default 8080)") do |port|
      @@port = port.to_i
    end
    parser.on("-i IP", "--ip=IP", "Specifies the ip to run on (default 127.0.0.1)") do |ip|
      @@ip = ip
    end
    parser.on("-d DIRECTORY", "--directory=DIR", "Specifies the directory to run on (default same dir where is executed)") do |dir|
      @@directory = directory
    end
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
end