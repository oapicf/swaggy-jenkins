# Load the gem
require 'swaggy_jenkins'

SwaggyJenkinsClient.configure do |config|
  config.host = 'jenkins-ccos.apache.org'
  config.scheme = 'https'
end

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new

begin
  # Pass empty auth_names to skip sending basic auth header without credentials
  opts = { debug_auth_names: [] }
  result = api_instance.get_jenkins(opts)
  puts "The response of RemoteAccessApi->get_jenkins:"
  puts result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling RemoteAccessApi->get_jenkins: #{e}"
  raise
end
