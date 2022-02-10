# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.branch_impl import BranchImpl
from openapi_server.models.favorite_impl import FavoriteImpl
from openapi_server.models.github_organization import GithubOrganization
from openapi_server.models.github_scm import GithubScm
from openapi_server.models.multibranch_pipeline import MultibranchPipeline
from openapi_server.models.organisation import Organisation
from openapi_server.models.pipeline import Pipeline
from openapi_server.models.pipeline_activity import PipelineActivity
from openapi_server.models.pipeline_folder_impl import PipelineFolderImpl
from openapi_server.models.pipeline_impl import PipelineImpl
from openapi_server.models.pipeline_run import PipelineRun
from openapi_server.models.pipeline_run_node import PipelineRunNode
from openapi_server.models.pipeline_step_impl import PipelineStepImpl
from openapi_server.models.queue_item_impl import QueueItemImpl
from openapi_server.models.unknownbasetype import UNKNOWN_BASE_TYPE
from openapi_server.models.user import User


async def test_delete_pipeline_queue_item(client):
    """Test case for delete_pipeline_queue_item

    
    """
    headers = { 
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='DELETE',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'.format(organization='organization_example', pipeline='pipeline_example', queue='queue_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_authenticated_user(client):
    """Test case for get_authenticated_user

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/user'.format(organization='organization_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_classes(client):
    """Test case for get_classes

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/classes/{_class}'.format(_class='_class_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_json_web_key(client):
    """Test case for get_json_web_key

    
    """
    headers = { 
        'Accept': 'application/json',
    }
    response = await client.request(
        method='GET',
        path='/jwt-auth/jwks/{key}'.format(key=56),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_json_web_token(client):
    """Test case for get_json_web_token

    
    """
    params = [('expiryTimeInMins', 56),
                    ('maxExpiryTimeInMins', 56)]
    headers = { 
        'Accept': 'application/json',
    }
    response = await client.request(
        method='GET',
        path='/jwt-auth/token',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_organisation(client):
    """Test case for get_organisation

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}'.format(organization='organization_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_organisations(client):
    """Test case for get_organisations

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline(client):
    """Test case for get_pipeline

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_activities(client):
    """Test case for get_pipeline_activities

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_branch(client):
    """Test case for get_pipeline_branch

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_branch_run(client):
    """Test case for get_pipeline_branch_run

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', branch='branch_example', run='run_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_branches(client):
    """Test case for get_pipeline_branches

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_folder(client):
    """Test case for get_pipeline_folder

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{folder}'.format(organization='organization_example', folder='folder_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_folder_pipeline(client):
    """Test case for get_pipeline_folder_pipeline

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'.format(organization='organization_example', pipeline='pipeline_example', folder='folder_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_queue(client):
    """Test case for get_pipeline_queue

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run(client):
    """Test case for get_pipeline_run

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_log(client):
    """Test case for get_pipeline_run_log

    
    """
    params = [('start', 56),
                    ('download', True)]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_node(client):
    """Test case for get_pipeline_run_node

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_node_step(client):
    """Test case for get_pipeline_run_node_step

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_node_step_log(client):
    """Test case for get_pipeline_run_node_step_log

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_node_steps(client):
    """Test case for get_pipeline_run_node_steps

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'.format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_run_nodes(client):
    """Test case for get_pipeline_run_nodes

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipeline_runs(client):
    """Test case for get_pipeline_runs

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_pipelines(client):
    """Test case for get_pipelines

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/pipelines'.format(organization='organization_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_scm(client):
    """Test case for get_scm

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/scm/{scm}'.format(organization='organization_example', scm='scm_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_scm_organisation_repositories(client):
    """Test case for get_scm_organisation_repositories

    
    """
    params = [('credentialId', 'credential_id_example'),
                    ('pageSize', 56),
                    ('pageNumber', 56)]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_scm_organisation_repository(client):
    """Test case for get_scm_organisation_repository

    
    """
    params = [('credentialId', 'credential_id_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scm_organisation}/repositories/{repository}'.format(organization='organization_example', scm='scm_example', scm_organisation='scm_organisation_example', repository='repository_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_scm_organisations(client):
    """Test case for get_scm_organisations

    
    """
    params = [('credentialId', 'credential_id_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/scm/{scm}/organizations'.format(organization='organization_example', scm='scm_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_user(client):
    """Test case for get_user

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/users/{user}'.format(organization='organization_example', user='user_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_user_favorites(client):
    """Test case for get_user_favorites

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/users/{user}/favorites'.format(user='user_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_get_users(client):
    """Test case for get_users

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/organizations/{organization}/users'.format(organization='organization_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_post_pipeline_run(client):
    """Test case for post_pipeline_run

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_post_pipeline_runs(client):
    """Test case for post_pipeline_runs

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='POST',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_put_pipeline_favorite(client):
    """Test case for put_pipeline_favorite

    
    """
    body = openapi_server.UNKNOWN_BASE_TYPE()
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='PUT',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'.format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_put_pipeline_run(client):
    """Test case for put_pipeline_run

    
    """
    params = [('blocking', 'blocking_example'),
                    ('timeOutInSecs', 56)]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='PUT',
        path='/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'.format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_search(client):
    """Test case for search

    
    """
    params = [('q', 'q_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/search/',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')


async def test_search_classes(client):
    """Test case for search_classes

    
    """
    params = [('q', 'q_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/blue/rest/classes/',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

