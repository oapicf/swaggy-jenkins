# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification

    The version of the OpenAPI document: 2.0.1-pre.0
    Contact: blah+oapicf@cliffano.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from swaggyjenkins.models.github_scmlinks import GithubScmlinks

class TestGithubScmlinks(unittest.TestCase):
    """GithubScmlinks unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> GithubScmlinks:
        """Test GithubScmlinks
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `GithubScmlinks`
        """
        model = GithubScmlinks()
        if include_optional:
            return GithubScmlinks(
                var_self = swaggyjenkins.models.link.Link(
                    _class = '', 
                    href = '', ),
                var_class = ''
            )
        else:
            return GithubScmlinks(
        )
        """

    def testGithubScmlinks(self):
        """Test GithubScmlinks"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
