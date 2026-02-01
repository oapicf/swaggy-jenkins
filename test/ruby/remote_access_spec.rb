require 'time'
require 'swaggy_jenkins'

describe 'SwaggyJenkinsClient' do
  before do
  end

  after do
  end

  describe 'test get_jenkins' do
    it 'should return Jenkins info' do
      SwaggyJenkinsClient.configure do |config|
        config.host = 'jenkins-ccos.apache.org'
        config.scheme = 'https'
      end

      api_instance = SwaggyJenkinsClient::RemoteAccessApi.new

      begin
        result = api_instance.get_jenkins
        expect(result).not_to be_nil
        expect(result).to be_a(SwaggyJenkinsClient::Hudson)
        expect(result.num_executors).to be >= 0
        puts "The response of RemoteAccessApi->get_jenkins:"
        puts result
      rescue SwaggyJenkinsClient::ApiError => e
        puts "Error when calling RemoteAccessApi->get_jenkins: #{e}"
        fail
      end
    end
  end

end
