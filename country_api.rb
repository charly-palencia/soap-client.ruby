
require_relative "./soap_client.rb"

class CountryAPI <  SOAPClient

  def wsdl_url
    "http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso?wsdl"
  end

  def list_country()
    response = @client.call(:list_of_country_names_by_name)
    response.body.dig(:list_of_country_names_by_name_response,
                      :list_of_country_names_by_name_result,
                      :t_country_code_and_name
                     )
  end
end


