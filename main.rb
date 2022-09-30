require_relative "./number_two_words_api.rb"
require_relative "./country_api.rb"

number_client = NumberTwoWordsApi.new
country_client  = CountryAPI.new
# Get all the operations for a SOAP Client
puts number_client.operations

# GEt results from number to words method
puts number_client.number_to_words(399)


# Get all the operations for a SOAP Client
puts country_client.operations

# GEt results from number to words method
puts country_client.list_country

