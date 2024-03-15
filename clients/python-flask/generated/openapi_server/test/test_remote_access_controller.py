import unittest

from flask import json

from openapi_server.models.computer_set import ComputerSet  # noqa: E501
from openapi_server.models.free_style_build import FreeStyleBuild  # noqa: E501
from openapi_server.models.free_style_project import FreeStyleProject  # noqa: E501
from openapi_server.models.hudson import Hudson  # noqa: E501
from openapi_server.models.list_view import ListView  # noqa: E501
from openapi_server.models.queue import Queue  # noqa: E501
from openapi_server.test import BaseTestCase


class TestRemoteAccessController(BaseTestCase):
    """RemoteAccessController integration test stubs"""

    def test_get_computer(self):
        """Test case for get_computer

        
        """
        query_string = [('depth', 56)]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/computer/api/json',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_jenkins(self):
        """Test case for get_jenkins

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/api/json',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_job(self):
        """Test case for get_job

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/api/json'.format(name='name_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_job_config(self):
        """Test case for get_job_config

        
        """
        headers = { 
            'Accept': 'text/xml',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/config.xml'.format(name='name_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_job_last_build(self):
        """Test case for get_job_last_build

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/lastBuild/api/json'.format(name='name_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_job_progressive_text(self):
        """Test case for get_job_progressive_text

        
        """
        query_string = [('start', 'start_example')]
        headers = { 
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/{number}/logText/progressiveText'.format(name='name_example', number='number_example'),
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_queue(self):
        """Test case for get_queue

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/queue/api/json',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_queue_item(self):
        """Test case for get_queue_item

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/queue/item/{number}/api/json'.format(number='number_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_view(self):
        """Test case for get_view

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/view/{name}/api/json'.format(name='name_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_view_config(self):
        """Test case for get_view_config

        
        """
        headers = { 
            'Accept': 'text/xml',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/view/{name}/config.xml'.format(name='name_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_head_jenkins(self):
        """Test case for head_jenkins

        
        """
        headers = { 
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/api/json',
            method='HEAD',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_create_item(self):
        """Test case for post_create_item

        
        """
        body = 'body_example'
        query_string = [('name', 'name_example'),
                        ('from', '_from_example'),
                        ('mode', 'mode_example')]
        headers = { 
            'Accept': '*/*',
            'Content-Type': 'application/json',
            'jenkins_crumb': 'jenkins_crumb_example',
            'content_type': 'content_type_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/createItem',
            method='POST',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_create_view(self):
        """Test case for post_create_view

        
        """
        body = 'body_example'
        query_string = [('name', 'name_example')]
        headers = { 
            'Accept': '*/*',
            'Content-Type': 'application/json',
            'jenkins_crumb': 'jenkins_crumb_example',
            'content_type': 'content_type_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/createView',
            method='POST',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_build(self):
        """Test case for post_job_build

        
        """
        query_string = [('json', '_json_example'),
                        ('token', 'token_example')]
        headers = { 
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/build'.format(name='name_example'),
            method='POST',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_config(self):
        """Test case for post_job_config

        
        """
        body = 'body_example'
        headers = { 
            'Accept': '*/*',
            'Content-Type': 'application/json',
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/config.xml'.format(name='name_example'),
            method='POST',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_delete(self):
        """Test case for post_job_delete

        
        """
        headers = { 
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/doDelete'.format(name='name_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_disable(self):
        """Test case for post_job_disable

        
        """
        headers = { 
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/disable'.format(name='name_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_enable(self):
        """Test case for post_job_enable

        
        """
        headers = { 
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/enable'.format(name='name_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_job_last_build_stop(self):
        """Test case for post_job_last_build_stop

        
        """
        headers = { 
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/job/{name}/lastBuild/stop'.format(name='name_example'),
            method='POST',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_view_config(self):
        """Test case for post_view_config

        
        """
        body = 'body_example'
        headers = { 
            'Accept': '*/*',
            'Content-Type': 'application/json',
            'jenkins_crumb': 'jenkins_crumb_example',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/view/{name}/config.xml'.format(name='name_example'),
            method='POST',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
