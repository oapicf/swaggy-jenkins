import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://jenkins-ccos.apache.org/
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "https://jenkins-ccos.apache.org/"
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)

    try:
        # Get Jenkins info
        api_response = api_instance.get_jenkins()
        print("The response of RemoteAccessApi->get_jenkins:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling RemoteAccessApi->get_jenkins: %s\n" % e)
        raise
