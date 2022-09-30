require 'forwardable'
require 'savon'

# list of soap examples
# https://documenter.getpostman.com/view/8854915/Szf26WHn#33a2b225-11a6-48d3-a695-fb0989cc4971
# https://www.savonrb.com/version2/globals.html for authentication information
class SOAPClient
  extend Forwardable
  def_delegators :@client, :operations

  def initialize()
    @client = client = Savon.client(wsdl: wsdl_url)
  end

  def wsdl_url
    raise "You need to implement this method"
  end
  # response.success?     # => false
  # response.soap_fault?  # => true
  # response.http_error?  # => false
end
