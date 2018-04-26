require 'open-uri'
require 'json'

class APIS
	def initialize
		@request = nil
	end

	def connectToApi(link)
		@request = open(link)
		storeData()
	end

	def storeData
		doc = ""

		@request.each do |i|
			doc << i
		end

		@json = JSON.parse(doc)
	end

	def fallback
		raise NotImplementedError
	end

	def getData
		raise NotImplementedError
	end
end
