require_relative 'APIS.rb'
require_relative 'Logger.rb'

class UniversitiesAPI < APIS
	def initialize(country)
	begin
		super()
		@country = country
		@url = "http://universities.hipolabs.com/search?country=" + country
		connectToApi(@url)

	rescue
		return fallback
	end
	end

	def printApi
		if @request != nil
			message = ""
			message = "\nUniversities in #{@country}\n"
			puts message
			@json.each do |university|
				puts university["name"]
				Logger.instance.log(university["name"].to_json)
			end
		end
	end

	def fallback
		puts "Couldn't connect to UniversitiesAPI! Using fallback data!"
		Logger.instance.log("Couldn't connect to UniversitiesAPI! Using fallback data!")

		message = ""
		message = "\nUniversities in Turkey\nAdnan Menderes University
Ahi Evran University
Akdeniz University
Afyon Kocatepe University
Anadolu University
Ankara University
Istanbul Arel University
Atatürk University
Atilim University
Bahcesehir University
Balikesir University
Baskent University
Celal Bayar University
Beykent University
Bilecik University
Istanbul Bilgi University
Bilkent University
Bogazici University
Cag University
Cankaya University
Canakkale (18th March) University
Cukurova University
Cumhuriyet (Republik) University
Dokuz Eylül University
Turkish Naval Academy
Dicle (Tirgris) University
Dogus University
Dumlupinar University
Ege University
Erciyes University
Tobb Economics and Technology University
Firat (Euphrates) University
Gaziantep University
Gazi University Ankara
Gaziosmanpasa University
Galatasaray University
Gebze Institute of Technology
Halic University
Harran University
Hacettepe University
Abant Izzet Baysal University
Istanbul Kultur University
Inönü University
Isik University
Istanbul Ticaret University
Istanbul Technical University
Izmir Institute of Technology
Izmir Economic University
Kafkas University
Zonguldak Karaelmas University
Kadir Has University
Kilis 7 Aralık University
Kirikkale University
Necmettin Erbakan University
Kocaeli University
Kahramanmaras Sütcü Imam University
Karadeniz Technical University
Koc University
Maltepe University
Marmara University
Mersin University
Mustafa Kemal University
Mimar Sinan University
Mugla Sitki Kocman University
Omer Halisdemir University
Namik Kemal University
Middle East Technical University
Osmangazi University
Ondokuz Mayis University Samsun
Ordu University
Ozyegin University
Pamukkale University
Sabanci University
Sakarya University
Suleyman Demirel University
İstanbul Şehir University
Selcuk University
Türkisch-Deutsche Universität
Trakya University
Ufuk University
Uludag University
Yalova University
Yasar University
Yildirim Beyazit University
Yeditepe University
Yildiz Technical University
Yüzüncü Yil (Centennial) University
Abdullah Gul University
Adana Science and Technology University
Adiyaman University
Agri İbrahim Cecen University
Aksaray University
Alanya Alaaddin Keykubat University
Amasya University
Ankara Social Science University
Ardahan University
Artvin Coruh University
Bandirma ONYEDİ Eylul University
Bartin University
Batman University
Bayburt University
Bilecik Seyh Edebali University
Bingol University
Bitlis Eren University
Bozok University
Bursa Tecnical University
Cankiri karatekin University
Dumlupinar University
Duzce University
Erzincan University
Erzurum Tecnical University
Gebze Tecnical University
Gulhane military medical Academy
Gumushane University
Hakkari University
Air Force Academy
Hitit University
İgdir University
İskenderun Tecnical University
Istanbul Medeniyet University
İstanbul University
İzmir Katip celebi University
Karabuk University
karamanoglu mehmet bey University
Kastamonu University
Kirklareli University
Mardin Artuklu University
Mehmet Akif Ersoy University
Mimar Sinan Fine Arts University
Mus Alparslan University
Nevsehir Haci Bektas Veli University
Ortadogu Tecnical University
Osmaniye Korkut Ata University
Recep Tayip Erdogan University
Siirt University
Sinop University
Sirnak University
Tunceli University
Health Sciences University
Usak University
Bulent Ecevit University
Acibadem University
Alanya Hamdullah Emin Pasa University
Avrasya University
Bezmialem Vakif University
Biruni University
Fatih Sultan Mehmet University
Gedik University
Hasan Kalyoncu University
İstanbul 29Mayis  University
Istanbul Aydin University
Istanbul Esenyurt University
Istanbul Gelisim University
Istanbul Kemerburgaz  University
Istanbul Medipol University
Istanbul Rumeli University
Istanbul Sabahattin Zaim University
Izmir Economy University
Karatay University
Konya Gida Tarim University
MEF University
Nisantasi University
Nuh Naci Yazgan University
Okan University
Piri Reis University
Sanko University
TED University
Toros University
Turkish Aeronautical Association University
Antalya international University
Uskudar University
Yeni Yuzyil University
Yuksek ihtisas University"
		puts message
		Logger.instance.log(message.to_json)
		
	end
end