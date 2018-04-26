require_relative 'APIS.rb'
require_relative 'Logger.rb'

class CountriesAPI < APIS
	def initialize(country)
	begin
		super()
		@country = country
		@url = "https://restcountries.eu/rest/v2/name/" + country
		connectToApi(@url)

	rescue
		return fallback
	end
	end

	def printApi
		if @request != nil
			message = ""
			message = "Information about #{@country}\nCapital: #{@json[0]["capital"]}\nCurrency: "
			puts message
			Logger.instance.log(message.to_json)
			# puts "\nCapital: #{@json[0]["capital"]}"
			# puts "Currency: "

			@data = @json[0]["currencies"]
			@data.each do |a|
				puts a["code"]
				Logger.instance.log(a["code"].to_json)
			end
		end

		#Logger.instance.log(@json)

	end

	def getData
		return @country
	end

	def fallback
		puts "Couldn't connect to CountryAPI! Using fallback data!"
		Logger.instance.log("Couldn't connect to CountryAPI! Using fallback data!")

		message = ""
		message = "\nInformation about Turkey\nCapital: Ankara\nCurrency: TRY"
		puts message
		Logger.instance.log(message.to_json)
		@country = "Turkey"
	end
end