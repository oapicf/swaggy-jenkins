# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification  # noqa: E501

    The version of the OpenAPI document: 1.5.1-pre.0
    Contact: blah@cliffano.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import openapi_client
from openapi_client.models.branch_impllinks import BranchImpllinks  # noqa: E501
from openapi_client.rest import ApiException

class TestBranchImpllinks(unittest.TestCase):
    """BranchImpllinks unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test BranchImpllinks
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.branch_impllinks.BranchImpllinks()  # noqa: E501
        if include_optional :
            return BranchImpllinks(
                _self = openapi_client.models.link.Link(
                    _class = '', 
                    href = '', ), 
                actions = openapi_client.models.link.Link(
                    _class = '', 
                    href = '', ), 
                runs = openapi_client.models.link.Link(
                    _class = '', 
                    href = '', ), 
                queue = openapi_client.models.link.Link(
                    _class = '', 
                    href = '', ), 
                _class = ''
            )
        else :
            return BranchImpllinks(
        )

    def testBranchImpllinks(self):
        """Test BranchImpllinks"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
