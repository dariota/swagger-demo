# SwaggerClient::EchoServerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**what_did_i_say**](EchoServerApi.md#what_did_i_say) | **GET** / | Echoes back input


# **what_did_i_say**
> ClientSaid what_did_i_say(i_said)

Echoes back input

Simply echoes back whatever the client passes in. Hopefully can be deployed without even needing a server.  

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EchoServerApi.new

i_said = "i_said_example" # String | What the client has said, to be said back to it.


begin
  #Echoes back input
  result = api_instance.what_did_i_say(i_said)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EchoServerApi->what_did_i_say: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i_said** | **String**| What the client has said, to be said back to it. | 

### Return type

[**ClientSaid**](ClientSaid.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



