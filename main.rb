require_relative 'APIS.rb'
require_relative 'CurrencyAPI.rb'
require_relative 'CountriesAPI.rb'
require_relative 'UniversitiesAPI.rb'

def main()
	puts "\nEnter one of the countries' names to gather information: "
	puts "1.Turkey	2.Germany	3.France	4.Spain     5.Italy\n"
	input = gets

	countryInfo = CountriesAPI.new(input)
	countryInfo.printApi()

	currencyInfo = CurrencyAPI.new(countryInfo.getData())
	currencyInfo.printApi()	
	
	universitiesInfo = UniversitiesAPI.new(currencyInfo.getData())
	universitiesInfo.printApi()

	
end

main()