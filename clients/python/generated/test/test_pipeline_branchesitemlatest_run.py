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

from swaggyjenkins.models.pipeline_branchesitemlatest_run import PipelineBranchesitemlatestRun

class TestPipelineBranchesitemlatestRun(unittest.TestCase):
    """PipelineBranchesitemlatestRun unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PipelineBranchesitemlatestRun:
        """Test PipelineBranchesitemlatestRun
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PipelineBranchesitemlatestRun`
        """
        model = PipelineBranchesitemlatestRun()
        if include_optional:
            return PipelineBranchesitemlatestRun(
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
                commit_id = '',
                var_class = ''
            )
        else:
            return PipelineBranchesitemlatestRun(
        )
        """

    def testPipelineBranchesitemlatestRun(self):
        """Test PipelineBranchesitemlatestRun"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
