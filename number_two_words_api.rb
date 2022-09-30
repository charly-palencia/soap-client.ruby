require_relative "./soap_client.rb"

class NumberTwoWordsApi <  SOAPClient

  def wsdl_url
    "https://www.dataaccess.com/webservicesserver/NumberConversion.wso?WSDL"
  end

  def number_to_words(number)
    response = @client.call(:number_to_words) do
      message ubi_num: number
    end
    response.body.dig(:number_to_words_response, :number_to_words_result)
  end
end

