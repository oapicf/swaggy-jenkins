# coding: utf-8

from __future__ import absolute_import

from flask import json
from io import BytesIO

from app.openapi_server.models.branch_impl import BranchImpl  # noqa: E501
from app.openapi_server.models.favorite_impl import FavoriteImpl  # noqa: E501
from app.openapi_server.models.github_organization import GithubOrganization  # noqa: E501
from app.openapi_server.models.github_scm import GithubScm  # noqa: E501
from app.openapi_server.models.multibranch_pipeline import MultibranchPipeline  # noqa: E501
from app.openapi_server.models.organisation import Organisation  # noqa: E501
from app.openapi_server.models.pipeline import Pipeline  # noqa: E501
from app.openapi_server.models.pipeline_activity import PipelineActivity  # noqa: E501
from app.openapi_server.models.pipeline_folder_impl import PipelineFolderImpl  # noqa: E501
from app.openapi_server.models.pipeline_impl import PipelineImpl  # noqa: E501
from app.openapi_server.models.pipeline_run import PipelineRun  # noqa: E501
from app.openapi_server.models.pipeline_run_node import PipelineRunNode  # noqa: E501
from app.openapi_server.models.pipeline_step_impl import PipelineStepImpl  # noqa: E501
from app.openapi_server.models.queue_item_impl import QueueItemImpl  # noqa: E501
from app.openapi_server.models.user import User  # noqa: E501
from openapi_server.test import BaseTestCase


class TestBlueOceanController(BaseTestCase):
    """BlueOceanController integration test stubs"""

    def test_delete_pipeline_queue_item(self):
        """Test case for delete_pipeline_queue_item

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'.format(organization='organization_example', pipeline='pipeline_example', queue='queue_example'),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_authenticated_user(self):
        """Test case for get_authenticated_user

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/user'.format(organization='organization_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_classes(self):
        """Test case for get_classes

        
        """
        response = self.client.open(
            '/blue/rest/classes/{_class}'.format(_class='_class_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_json_web_key(self):
        """Test case for get_json_web_key

        
        """
        response = self.client.open(
            '/jwt-auth/jwks/{key}'.format(key=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_json_web_token(self):
        """Test case for get_json_web_token

        
        """
        query_string = [('expiry_time_in_mins', 56),
                        ('max_expiry_time_in_mins', 56)]
        response = self.client.open(
            '/jwt-auth/token',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_organisation(self):
        """Test case for get_organisation

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}'.format(organization='organization_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_organisations(self):
        """Test case for get_organisations

        
        """
        response = self.client.open(
            '/blue/rest/organizations/',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline(self):
        """Test case for get_pipeline

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_activities(self):
        """Test case for get_pipeline_activities

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branch(self):
        """Test case for get_pipeline_branch

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branch_run(self):
        """Test case for get_pipeline_branch_run

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example', run='run_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branches(self):
        """Test case for get_pipeline_branches

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_folder(self):
        """Test case for get_pipeline_folder

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{folder}'.format(organization='organization_example', folder='folder_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_folder_pipeline(self):
        """Test case for get_pipeline_folder_pipeline

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example', folder='folder_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_queue(self):
        """Test case for get_pipeline_queue

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run(self):
        """Test case for get_pipeline_run

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_log(self):
        """Test case for get_pipeline_run_log

        
        """
        query_string = [('start', 56),
                        ('download', True)]
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node(self):
        """Test case for get_pipeline_run_node

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_step(self):
        """Test case for get_pipeline_run_node_step

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_step_log(self):
        """Test case for get_pipeline_run_node_step_log

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_steps(self):
        """Test case for get_pipeline_run_node_steps

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_nodes(self):
        """Test case for get_pipeline_run_nodes

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_runs(self):
        """Test case for get_pipeline_runs

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipelines(self):
        """Test case for get_pipelines

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines'.format(organization='organization_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm(self):
        """Test case for get_scm

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}'.format(organization='organization_example', scm='scm_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisation_repositories(self):
        """Test case for get_scm_organisation_repositories

        
        """
        query_string = [('credential_id', 'credential_id_example'),
                        ('page_size', 56),
                        ('page_number', 56)]
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example'),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisation_repository(self):
        """Test case for get_scm_organisation_repository

        
        """
        query_string = [('credential_id', 'credential_id_example')]
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories/{repository}'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example', repository='repository_example'),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisations(self):
        """Test case for get_scm_organisations

        
        """
        query_string = [('credential_id', 'credential_id_example')]
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations'.format(organization='organization_example', scm='scm_example'),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_user(self):
        """Test case for get_user

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/users/{user}'.format(organization='organization_example', user='user_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_user_favorites(self):
        """Test case for get_user_favorites

        
        """
        response = self.client.open(
            '/blue/rest/users/{user}/favorites'.format(user='user_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_users(self):
        """Test case for get_users

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/users'.format(organization='organization_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_pipeline_run(self):
        """Test case for post_pipeline_run

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_pipeline_runs(self):
        """Test case for post_pipeline_runs

        
        """
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_pipeline_favorite(self):
        """Test case for put_pipeline_favorite

        
        """
        body = True
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'.format(organization='organization_example', pipeline='pipeline_example'),
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_pipeline_run(self):
        """Test case for put_pipeline_run

        
        """
        query_string = [('blocking', 'blocking_example'),
                        ('time_out_in_secs', 56)]
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='PUT',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_search(self):
        """Test case for search

        
        """
        query_string = [('q', 'q_example')]
        response = self.client.open(
            '/blue/rest/search/',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_search_classes(self):
        """Test case for search_classes

        
        """
        query_string = [('q', 'q_example')]
        response = self.client.open(
            '/blue/rest/classes/',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
