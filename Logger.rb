require 'singleton'

class Logger
	include Singleton

	def initialize
		@log = File.open("log.json", "w")
	end

	def log(msg)
		@log.puts(msg)
		@log.close()
		@log = File.open("log.json", "a")
	end
end