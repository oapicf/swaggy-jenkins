=begin
#Swaggy Jenkins

#Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 2.0.1-pre.0
Contact: blah+oapicf@cliffano.com
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggyJenkinsClient::RemoteAccessApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RemoteAccessApi' do
  before do
    # run before each test
    @api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RemoteAccessApi' do
    it 'should create an instance of RemoteAccessApi' do
      expect(@api_instance).to be_instance_of(SwaggyJenkinsClient::RemoteAccessApi)
    end
  end

  # unit tests for get_computer
  # Retrieve computer details
  # @param depth Recursion depth in response model
  # @param [Hash] opts the optional parameters
  # @return [ComputerSet]
  describe 'get_computer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_jenkins
  # Retrieve Jenkins details
  # @param [Hash] opts the optional parameters
  # @return [Hudson]
  describe 'get_jenkins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job
  # Retrieve job details
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @return [FreeStyleProject]
  describe 'get_job test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job_config
  # Retrieve job configuration
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_job_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job_last_build
  # Retrieve job&#39;s last build details
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @return [FreeStyleBuild]
  describe 'get_job_last_build test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job_progressive_text
  # Retrieve job&#39;s build progressive text output
  # @param name Name of the job
  # @param number Build number
  # @param start Starting point of progressive text output
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_job_progressive_text test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_queue
  # Retrieve queue details
  # @param [Hash] opts the optional parameters
  # @return [Queue]
  describe 'get_queue test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_queue_item
  # Retrieve queued item details
  # @param number Queue number
  # @param [Hash] opts the optional parameters
  # @return [Queue]
  describe 'get_queue_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_view
  # Retrieve view details
  # @param name Name of the view
  # @param [Hash] opts the optional parameters
  # @return [ListView]
  describe 'get_view test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_view_config
  # Retrieve view configuration
  # @param name Name of the view
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_view_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for head_jenkins
  # Retrieve Jenkins headers
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'head_jenkins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_create_item
  # Create a new job using job configuration, or copied from an existing job
  # @param name Name of the new job
  # @param [Hash] opts the optional parameters
  # @option opts [String] :from Existing job to copy from
  # @option opts [String] :mode Set to &#39;copy&#39; for copying an existing job
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @option opts [String] :content_type Content type header application/xml
  # @option opts [String] :body Job configuration in config.xml format
  # @return [nil]
  describe 'post_create_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_create_view
  # Create a new view using view configuration
  # @param name Name of the new view
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @option opts [String] :content_type Content type header application/xml
  # @option opts [String] :body View configuration in config.xml format
  # @return [nil]
  describe 'post_create_view test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_build
  # Build a job
  # @param name Name of the job
  # @param json 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :token 
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_build test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_config
  # Update job configuration
  # @param name Name of the job
  # @param body Job configuration in config.xml format
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_delete
  # Delete a job
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_disable
  # Disable a job
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_disable test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_enable
  # Enable a job
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_enable test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_job_last_build_stop
  # Stop a job
  # @param name Name of the job
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_job_last_build_stop test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_view_config
  # Update view configuration
  # @param name Name of the view
  # @param body View configuration in config.xml format
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jenkins_crumb CSRF protection token
  # @return [nil]
  describe 'post_view_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
