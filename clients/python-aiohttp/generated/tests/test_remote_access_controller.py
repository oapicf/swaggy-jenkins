# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.computer_set import ComputerSet
from openapi_server.models.free_style_build import FreeStyleBuild
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server.models.hudson import Hudson
from openapi_server.models.list_view import ListView
from openapi_server.models.queue import Queue


pytestmark = pytest.mark.asyncio

async def test_get_computer(client):
    """Test case for get_computer

    
    """
    params = [('depth', 56)]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/computer/api/json',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_jenkins(client):
    """Test case for get_jenkins

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/api/json',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_job(client):
    """Test case for get_job

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/job/{name}/api/json'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_job_config(client):
    """Test case for get_job_config

    
    """
    headers = { 
        'Accept': 'text/xml',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/job/{name}/config.xml'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_job_last_build(client):
    """Test case for get_job_last_build

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/job/{name}/lastBuild/api/json'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_job_progressive_text(client):
    """Test case for get_job_progressive_text

    
    """
    params = [('start', 'start_example')]
    headers = { 
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/job/{name}/{number}/logText/progressiveText'.format(name='name_example', number='number_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_queue(client):
    """Test case for get_queue

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/queue/api/json',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_queue_item(client):
    """Test case for get_queue_item

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/queue/item/{number}/api/json'.format(number='number_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_view(client):
    """Test case for get_view

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/view/{name}/api/json'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_get_view_config(client):
    """Test case for get_view_config

    
    """
    headers = { 
        'Accept': 'text/xml',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/view/{name}/config.xml'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_head_jenkins(client):
    """Test case for head_jenkins

    
    """
    headers = { 
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='HEAD',
        path='/api/json',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_create_item(client):
    """Test case for post_create_item

    
    """
    body = 'body_example'
    params = [('name', 'name_example'),
                    ('from', '_from_example'),
                    ('mode', 'mode_example')]
    headers = { 
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'jenkins_crumb': 'jenkins_crumb_example',
        'content_type': 'content_type_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/createItem',
        headers=headers,
        json=body,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_create_view(client):
    """Test case for post_create_view

    
    """
    body = 'body_example'
    params = [('name', 'name_example')]
    headers = { 
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'jenkins_crumb': 'jenkins_crumb_example',
        'content_type': 'content_type_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/createView',
        headers=headers,
        json=body,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_build(client):
    """Test case for post_job_build

    
    """
    params = [('json', '_json_example'),
                    ('token', 'token_example')]
    headers = { 
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/build'.format(name='name_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_config(client):
    """Test case for post_job_config

    
    """
    body = 'body_example'
    headers = { 
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/config.xml'.format(name='name_example'),
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_delete(client):
    """Test case for post_job_delete

    
    """
    headers = { 
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/doDelete'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_disable(client):
    """Test case for post_job_disable

    
    """
    headers = { 
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/disable'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_enable(client):
    """Test case for post_job_enable

    
    """
    headers = { 
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/enable'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_job_last_build_stop(client):
    """Test case for post_job_last_build_stop

    
    """
    headers = { 
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/job/{name}/lastBuild/stop'.format(name='name_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


pytestmark = pytest.mark.asyncio

async def test_post_view_config(client):
    """Test case for post_view_config

    
    """
    body = 'body_example'
    headers = { 
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'jenkins_crumb': 'jenkins_crumb_example',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/view/{name}/config.xml'.format(name='name_example'),
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

