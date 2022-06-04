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
from openapi_client.models.pipeline_run import PipelineRun  # noqa: E501
from openapi_client.rest import ApiException

class TestPipelineRun(unittest.TestCase):
    """PipelineRun unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test PipelineRun
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.pipeline_run.PipelineRun()  # noqa: E501
        if include_optional :
            return PipelineRun(
                _class = '', 
                artifacts = [
                    openapi_client.models.pipeline_runartifacts.PipelineRunartifacts(
                        name = '', 
                        size = 56, 
                        url = '', 
                        _class = '', )
                    ], 
                duration_in_millis = 56, 
                estimated_duration_in_millis = 56, 
                en_queue_time = '', 
                end_time = '', 
                id = '', 
                organization = '', 
                pipeline = '', 
                result = '', 
                run_summary = '', 
                start_time = '', 
                state = '', 
                type = '', 
                commit_id = ''
            )
        else :
            return PipelineRun(
        )

    def testPipelineRun(self):
        """Test PipelineRun"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
