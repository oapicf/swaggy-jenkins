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

from swaggyjenkins.models.free_style_build import FreeStyleBuild

class TestFreeStyleBuild(unittest.TestCase):
    """FreeStyleBuild unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> FreeStyleBuild:
        """Test FreeStyleBuild
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `FreeStyleBuild`
        """
        model = FreeStyleBuild()
        if include_optional:
            return FreeStyleBuild(
                var_class = '',
                number = 56,
                url = '',
                actions = [
                    swaggyjenkins.models.cause_action.CauseAction(
                        _class = '', 
                        causes = [
                            swaggyjenkins.models.cause_user_id_cause.CauseUserIdCause(
                                _class = '', 
                                short_description = '', 
                                user_id = '', 
                                user_name = '', )
                            ], )
                    ],
                building = True,
                description = '',
                display_name = '',
                duration = 56,
                estimated_duration = 56,
                executor = '',
                full_display_name = '',
                id = '',
                keep_log = True,
                queue_id = 56,
                result = '',
                timestamp = 56,
                built_on = '',
                change_set = swaggyjenkins.models.empty_change_log_set.EmptyChangeLogSet(
                    _class = '', 
                    kind = '', )
            )
        else:
            return FreeStyleBuild(
        )
        """

    def testFreeStyleBuild(self):
        """Test FreeStyleBuild"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
