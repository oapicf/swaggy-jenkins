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

from swaggyjenkins.models.pipeline_branchesitem import PipelineBranchesitem

class TestPipelineBranchesitem(unittest.TestCase):
    """PipelineBranchesitem unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PipelineBranchesitem:
        """Test PipelineBranchesitem
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PipelineBranchesitem`
        """
        model = PipelineBranchesitem()
        if include_optional:
            return PipelineBranchesitem(
                display_name = '',
                estimated_duration_in_millis = 56,
                name = '',
                weather_score = 56,
                latest_run = swaggyjenkins.models.pipeline_branchesitemlatest_run.PipelineBranchesitemlatestRun(
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
                    _class = '', ),
                organization = '',
                pull_request = swaggyjenkins.models.pipeline_branchesitempull_request.PipelineBranchesitempullRequest(
                    _links = swaggyjenkins.models.pipeline_branchesitempull_requestlinks.PipelineBranchesitempullRequestlinks(
                        self = '', 
                        _class = '', ), 
                    author = '', 
                    id = '', 
                    title = '', 
                    url = '', 
                    _class = '', ),
                total_number_of_pull_requests = 56,
                var_class = ''
            )
        else:
            return PipelineBranchesitem(
        )
        """

    def testPipelineBranchesitem(self):
        """Test PipelineBranchesitem"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
