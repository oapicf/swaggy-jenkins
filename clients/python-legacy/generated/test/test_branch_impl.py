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
from openapi_client.models.branch_impl import BranchImpl  # noqa: E501
from openapi_client.rest import ApiException

class TestBranchImpl(unittest.TestCase):
    """BranchImpl unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test BranchImpl
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.branch_impl.BranchImpl()  # noqa: E501
        if include_optional :
            return BranchImpl(
                _class = '', 
                display_name = '', 
                estimated_duration_in_millis = 56, 
                full_display_name = '', 
                full_name = '', 
                name = '', 
                organization = '', 
                parameters = [
                    openapi_client.models.string_parameter_definition.StringParameterDefinition(
                        _class = '', 
                        default_parameter_value = openapi_client.models.string_parameter_value.StringParameterValue(
                            _class = '', 
                            name = '', 
                            value = '', ), 
                        description = '', 
                        name = '', 
                        type = '', )
                    ], 
                permissions = openapi_client.models.branch_implpermissions.BranchImplpermissions(
                    create = True, 
                    read = True, 
                    start = True, 
                    stop = True, 
                    _class = '', ), 
                weather_score = 56, 
                pull_request = '', 
                links = openapi_client.models.branch_impllinks.BranchImpllinks(
                    self = openapi_client.models.link.Link(
                        _class = '', 
                        href = '', ), 
                    actions = openapi_client.models.link.Link(
                        _class = '', 
                        href = '', ), 
                    runs = , 
                    queue = , 
                    _class = '', ), 
                latest_run = openapi_client.models.pipeline_run_impl.PipelineRunImpl(
                    _class = '', 
                    _links = openapi_client.models.pipeline_run_impllinks.PipelineRunImpllinks(
                        nodes = openapi_client.models.link.Link(
                            _class = '', 
                            href = '', ), 
                        log = openapi_client.models.link.Link(
                            _class = '', 
                            href = '', ), 
                        self = , 
                        actions = , 
                        steps = , 
                        _class = '', ), 
                    duration_in_millis = 56, 
                    en_queue_time = '', 
                    end_time = '', 
                    estimated_duration_in_millis = 56, 
                    id = '', 
                    organization = '', 
                    pipeline = '', 
                    result = '', 
                    run_summary = '', 
                    start_time = '', 
                    state = '', 
                    type = '', 
                    commit_id = '', )
            )
        else :
            return BranchImpl(
        )

    def testBranchImpl(self):
        """Test BranchImpl"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
