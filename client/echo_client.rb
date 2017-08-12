require 'swagger_client'
require 'echo_api_remote'

api_client = SwaggerClient::EchoServerApi.new
remote_client = EchoApiRemote::EchoServerApi.new

data, status_code, headers = api_client.what_did_i_say_with_http_info(ARGV[0])

puts "Local:"
puts "\tI said: \"#{data.client_said}\""
puts "\tStatus: #{status_code}"

data, status_code, headers = remote_client.what_did_i_say_with_http_info(ARGV[0])

puts "Remote:"
puts "\tI said: \"#{data.client_said}\""
puts "\tStatus: #{status_code}"
