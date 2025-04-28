import unittest
import swaggyjenkins
from swaggyjenkins.models.hudson import Hudson
from swaggyjenkins.rest import ApiException
from pprint import pprint

class TestRemoteAccess(unittest.TestCase):

    def test_get_jenkins(self):

        configuration = swaggyjenkins.Configuration(
            host = "https://jenkins-ccos.apache.org/"
        )

        with swaggyjenkins.ApiClient(configuration) as api_client:
            api_instance = swaggyjenkins.RemoteAccessApi(api_client)

            try:
                api_response = api_instance.get_jenkins()
                print("The response of RemoteAccessApi->get_jenkins:\n")
                pprint(api_response)
                self.assertIsNotNone(api_response)
                self.assertIsInstance(api_response, Hudson)
                self.assertGreaterEqual(api_response.num_executors, 0)
            except Exception as e:
                self.fail("Exception when calling RemoteAccessApi->get_jenkins: %s\n" % e)
