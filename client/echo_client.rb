require 'swagger_client'

api_client = SwaggerClient::EchoServerApi.new

data, status_code, headers = api_client.what_did_i_say_with_http_info("Hello Swagger!")

puts "I said: \"#{data.client_said}\""
puts status_code
