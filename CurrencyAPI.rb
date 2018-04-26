require_relative 'APIS.rb'
require_relative 'Logger.rb'

class CurrencyAPI < APIS
	def initialize(country)
	begin
		super()
		@country = country
		@url = "https://api.fixer.io/latest"
		connectToApi(@url)

	rescue
		return fallback
	end
	end

	def printApi
		if @request != nil
			message = ""
			if (@country.chomp == "Turkey" || @country.chomp == "turkey")
				message = "1 #{@json['base']} = #{@json['rates']['TRY']} TRY"
				puts message
				Logger.instance.log(message.to_json)
			else
				message =  "1 #{@json['base']} = #{@json['rates']['USD']} USD"
				puts message
				Logger.instance.log(message.to_json)
			end
		end

	end

	def getData()
		return @country
	end


	def fallback
		puts "Couldn't connect to CurrencyAPI! Using fallback data!"
		Logger.instance.log("Couldn't connect to CurrencyAPI! Using fallback data!")

		message = ""
		message = "1 EUR = 4.5846 TRY"
		puts message
		Logger.instance.log(message.to_json)
		@country = "Turkey"
	end
end