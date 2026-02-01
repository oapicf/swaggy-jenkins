# coding: utf-8

from fastapi.testclient import TestClient


from pydantic import Field, StrictInt, StrictStr  # noqa: F401
from typing import Any, Optional  # noqa: F401
from typing_extensions import Annotated  # noqa: F401
from openapi_server.models.computer_set import ComputerSet  # noqa: F401
from openapi_server.models.free_style_build import FreeStyleBuild  # noqa: F401
from openapi_server.models.free_style_project import FreeStyleProject  # noqa: F401
from openapi_server.models.hudson import Hudson  # noqa: F401
from openapi_server.models.list_view import ListView  # noqa: F401
from openapi_server.models.queue import Queue  # noqa: F401


def test_get_jenkins(client: TestClient):
    """Test case for get_jenkins

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/api/json",
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_head_jenkins(client: TestClient):
    """Test case for head_jenkins

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "HEAD",
    #    "/api/json",
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_computer(client: TestClient):
    """Test case for get_computer

    
    """
    params = [("depth", 56)]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/computer/api/json",
    #    headers=headers,
    #    params=params,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_create_item(client: TestClient):
    """Test case for post_create_item

    
    """
    body = 'body_example'
    params = [("name", 'name_example'),     ("var_from", 'var_from_example'),     ("mode", 'mode_example')]
    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "content_type": 'content_type_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/createItem",
    #    headers=headers,
    #    json=body,
    #    params=params,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_create_view(client: TestClient):
    """Test case for post_create_view

    
    """
    body = 'body_example'
    params = [("name", 'name_example')]
    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "content_type": 'content_type_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/createView",
    #    headers=headers,
    #    json=body,
    #    params=params,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_job(client: TestClient):
    """Test case for get_job

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/job/{name}/api/json".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_build(client: TestClient):
    """Test case for post_job_build

    
    """
    params = [("var_json", 'var_json_example'),     ("token", 'token_example')]
    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/build".format(name='name_example'),
    #    headers=headers,
    #    params=params,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_job_config(client: TestClient):
    """Test case for get_job_config

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/job/{name}/config.xml".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_config(client: TestClient):
    """Test case for post_job_config

    
    """
    body = 'body_example'

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/config.xml".format(name='name_example'),
    #    headers=headers,
    #    json=body,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_delete(client: TestClient):
    """Test case for post_job_delete

    
    """

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/doDelete".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_disable(client: TestClient):
    """Test case for post_job_disable

    
    """

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/disable".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_enable(client: TestClient):
    """Test case for post_job_enable

    
    """

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/enable".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_job_last_build(client: TestClient):
    """Test case for get_job_last_build

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/job/{name}/lastBuild/api/json".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_job_last_build_stop(client: TestClient):
    """Test case for post_job_last_build_stop

    
    """

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/job/{name}/lastBuild/stop".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_job_progressive_text(client: TestClient):
    """Test case for get_job_progressive_text

    
    """
    params = [("start", 'start_example')]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/job/{name}/{number}/logText/progressiveText".format(name='name_example', number='number_example'),
    #    headers=headers,
    #    params=params,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_queue(client: TestClient):
    """Test case for get_queue

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/queue/api/json",
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_queue_item(client: TestClient):
    """Test case for get_queue_item

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/queue/item/{number}/api/json".format(number='number_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_view(client: TestClient):
    """Test case for get_view

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/view/{name}/api/json".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_view_config(client: TestClient):
    """Test case for get_view_config

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "GET",
    #    "/view/{name}/config.xml".format(name='name_example'),
    #    headers=headers,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_view_config(client: TestClient):
    """Test case for post_view_config

    
    """
    body = 'body_example'

    headers = {
        "jenkins_crumb": 'jenkins_crumb_example',
        "Authorization": "BasicZm9vOmJhcg==",
    }
    # uncomment below to make a request
    #response = client.request(
    #    "POST",
    #    "/view/{name}/config.xml".format(name='name_example'),
    #    headers=headers,
    #    json=body,
    #)

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200

