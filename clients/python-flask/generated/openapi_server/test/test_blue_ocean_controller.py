import unittest

from flask import json

from openapi_server.models.branch_impl import BranchImpl  # noqa: E501
from openapi_server.models.favorite_impl import FavoriteImpl  # noqa: E501
from openapi_server.models.github_organization import GithubOrganization  # noqa: E501
from openapi_server.models.github_scm import GithubScm  # noqa: E501
from openapi_server.models.multibranch_pipeline import MultibranchPipeline  # noqa: E501
from openapi_server.models.organisation import Organisation  # noqa: E501
from openapi_server.models.pipeline import Pipeline  # noqa: E501
from openapi_server.models.pipeline_activity import PipelineActivity  # noqa: E501
from openapi_server.models.pipeline_folder_impl import PipelineFolderImpl  # noqa: E501
from openapi_server.models.pipeline_impl import PipelineImpl  # noqa: E501
from openapi_server.models.pipeline_run import PipelineRun  # noqa: E501
from openapi_server.models.pipeline_run_node import PipelineRunNode  # noqa: E501
from openapi_server.models.pipeline_step_impl import PipelineStepImpl  # noqa: E501
from openapi_server.models.queue_item_impl import QueueItemImpl  # noqa: E501
from openapi_server.models.user import User  # noqa: E501
from openapi_server.test import BaseTestCase


class TestBlueOceanController(BaseTestCase):
    """BlueOceanController integration test stubs"""

    def test_delete_pipeline_queue_item(self):
        """Test case for delete_pipeline_queue_item

        
        """
        headers = { 
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'.format(organization='organization_example', pipeline='pipeline_example', queue='queue_example'),
            method='DELETE',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_authenticated_user(self):
        """Test case for get_authenticated_user

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/user'.format(organization='organization_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_classes(self):
        """Test case for get_classes

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/classes/{_class}'.format(_class='_class_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_json_web_key(self):
        """Test case for get_json_web_key

        
        """
        headers = { 
            'Accept': 'application/json',
        }
        response = self.client.open(
            '/jwt-auth/jwks/{key}'.format(key=56),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_json_web_token(self):
        """Test case for get_json_web_token

        
        """
        query_string = [('expiryTimeInMins', 56),
                        ('maxExpiryTimeInMins', 56)]
        headers = { 
            'Accept': 'application/json',
        }
        response = self.client.open(
            '/jwt-auth/token',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_organisation(self):
        """Test case for get_organisation

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}'.format(organization='organization_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_organisations(self):
        """Test case for get_organisations

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline(self):
        """Test case for get_pipeline

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_activities(self):
        """Test case for get_pipeline_activities

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branch(self):
        """Test case for get_pipeline_branch

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branch_run(self):
        """Test case for get_pipeline_branch_run

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example', run='run_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_branches(self):
        """Test case for get_pipeline_branches

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_folder(self):
        """Test case for get_pipeline_folder

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{folder}'.format(organization='organization_example', folder='folder_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_folder_pipeline(self):
        """Test case for get_pipeline_folder_pipeline

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example', folder='folder_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_queue(self):
        """Test case for get_pipeline_queue

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run(self):
        """Test case for get_pipeline_run

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_log(self):
        """Test case for get_pipeline_run_log

        
        """
        query_string = [('start', 56),
                        ('download', True)]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node(self):
        """Test case for get_pipeline_run_node

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_step(self):
        """Test case for get_pipeline_run_node_step

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_step_log(self):
        """Test case for get_pipeline_run_node_step_log

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_node_steps(self):
        """Test case for get_pipeline_run_node_steps

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_run_nodes(self):
        """Test case for get_pipeline_run_nodes

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipeline_runs(self):
        """Test case for get_pipeline_runs

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_pipelines(self):
        """Test case for get_pipelines

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines'.format(organization='organization_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm(self):
        """Test case for get_scm

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}'.format(organization='organization_example', scm='scm_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisation_repositories(self):
        """Test case for get_scm_organisation_repositories

        
        """
        query_string = [('credentialId', 'credential_id_example'),
                        ('pageSize', 56),
                        ('pageNumber', 56)]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example'),
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisation_repository(self):
        """Test case for get_scm_organisation_repository

        
        """
        query_string = [('credentialId', 'credential_id_example')]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories/{repository}'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example', repository='repository_example'),
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scm_organisations(self):
        """Test case for get_scm_organisations

        
        """
        query_string = [('credentialId', 'credential_id_example')]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/scm/{scm}/organizations'.format(organization='organization_example', scm='scm_example'),
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_user(self):
        """Test case for get_user

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/users/{user}'.format(organization='organization_example', user='user_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_user_favorites(self):
        """Test case for get_user_favorites

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/users/{user}/favorites'.format(user='user_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_users(self):
        """Test case for get_users

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/users'.format(organization='organization_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_pipeline_run(self):
        """Test case for post_pipeline_run

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_pipeline_runs(self):
        """Test case for post_pipeline_runs

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_pipeline_favorite(self):
        """Test case for put_pipeline_favorite

        
        """
        body = True
        headers = { 
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'.format(organization='organization_example', pipeline='pipeline_example'),
            method='PUT',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_pipeline_run(self):
        """Test case for put_pipeline_run

        
        """
        query_string = [('blocking', 'blocking_example'),
                        ('timeOutInSecs', 56)]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
            method='PUT',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_search(self):
        """Test case for search

        
        """
        query_string = [('q', 'q_example')]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/search/',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_search_classes(self):
        """Test case for search_classes

        
        """
        query_string = [('q', 'q_example')]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/blue/rest/classes/',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
