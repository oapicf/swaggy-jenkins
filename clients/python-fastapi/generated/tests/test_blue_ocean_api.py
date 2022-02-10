# coding: utf-8

from fastapi.testclient import TestClient


from openapi_server.models.branch_impl import BranchImpl  # noqa: F401
from openapi_server.models.favorite_impl import FavoriteImpl  # noqa: F401
from openapi_server.models.github_organization import GithubOrganization  # noqa: F401
from openapi_server.models.github_scm import GithubScm  # noqa: F401
from openapi_server.models.multibranch_pipeline import MultibranchPipeline  # noqa: F401
from openapi_server.models.organisation import Organisation  # noqa: F401
from openapi_server.models.pipeline import Pipeline  # noqa: F401
from openapi_server.models.pipeline_activity import PipelineActivity  # noqa: F401
from openapi_server.models.pipeline_folder_impl import PipelineFolderImpl  # noqa: F401
from openapi_server.models.pipeline_impl import PipelineImpl  # noqa: F401
from openapi_server.models.pipeline_run import PipelineRun  # noqa: F401
from openapi_server.models.pipeline_run_node import PipelineRunNode  # noqa: F401
from openapi_server.models.pipeline_step_impl import PipelineStepImpl  # noqa: F401
from openapi_server.models.queue_item_impl import QueueItemImpl  # noqa: F401
from openapi_server.models.unknownbasetype import UNKNOWN_BASE_TYPE  # noqa: F401
from openapi_server.models.user import User  # noqa: F401


def test_delete_pipeline_queue_item(client: TestClient):
    """Test case for delete_pipeline_queue_item

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "DELETE",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".format(organization='organization_example', pipeline='pipeline_example', queue='queue_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_authenticated_user(client: TestClient):
    """Test case for get_authenticated_user

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/user/".format(organization='organization_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_classes(client: TestClient):
    """Test case for get_classes

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/classes/{class}".format(class='_class_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_json_web_key(client: TestClient):
    """Test case for get_json_web_key

    
    """

    headers = {
    }
    response = client.request(
        "GET",
        "/jwt-auth/jwks/{key}".format(key=56),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_json_web_token(client: TestClient):
    """Test case for get_json_web_token

    
    """
    params = [("expiry_time_in_mins", 56),     ("max_expiry_time_in_mins", 56)]
    headers = {
    }
    response = client.request(
        "GET",
        "/jwt-auth/token",
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_organisation(client: TestClient):
    """Test case for get_organisation

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}".format(organization='organization_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_organisations(client: TestClient):
    """Test case for get_organisations

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/",
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline(client: TestClient):
    """Test case for get_pipeline

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_activities(client: TestClient):
    """Test case for get_pipeline_activities

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_branch(client: TestClient):
    """Test case for get_pipeline_branch

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".format(organization='organization_example', pipeline='pipeline_example', branch='branch_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_branch_run(client: TestClient):
    """Test case for get_pipeline_branch_run

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".format(organization='organization_example', pipeline='pipeline_example', branch='branch_example', run='run_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_branches(client: TestClient):
    """Test case for get_pipeline_branches

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_folder(client: TestClient):
    """Test case for get_pipeline_folder

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{folder}/".format(organization='organization_example', folder='folder_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_folder_pipeline(client: TestClient):
    """Test case for get_pipeline_folder_pipeline

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".format(organization='organization_example', pipeline='pipeline_example', folder='folder_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_queue(client: TestClient):
    """Test case for get_pipeline_queue

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run(client: TestClient):
    """Test case for get_pipeline_run

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_log(client: TestClient):
    """Test case for get_pipeline_run_log

    
    """
    params = [("start", 56),     ("download", True)]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_node(client: TestClient):
    """Test case for get_pipeline_run_node

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_node_step(client: TestClient):
    """Test case for get_pipeline_run_node_step

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_node_step_log(client: TestClient):
    """Test case for get_pipeline_run_node_step_log

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example', step='step_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_node_steps(client: TestClient):
    """Test case for get_pipeline_run_node_steps

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".format(organization='organization_example', pipeline='pipeline_example', run='run_example', node='node_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_run_nodes(client: TestClient):
    """Test case for get_pipeline_run_nodes

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipeline_runs(client: TestClient):
    """Test case for get_pipeline_runs

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_pipelines(client: TestClient):
    """Test case for get_pipelines

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/pipelines/".format(organization='organization_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_scm(client: TestClient):
    """Test case for get_scm

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/scm/{scm}".format(organization='organization_example', scm='scm_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_scm_organisation_repositories(client: TestClient):
    """Test case for get_scm_organisation_repositories

    
    """
    params = [("credential_id", 'credential_id_example'),     ("page_size", 56),     ("page_number", 56)]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".format(organization='organization_example', scm='scm_example', scmOrganisation='scm_organisation_example'),
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_scm_organisation_repository(client: TestClient):
    """Test case for get_scm_organisation_repository

    
    """
    params = [("credential_id", 'credential_id_example')]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".format(organization='organization_example', scm='scm_example', scmOrganisation='scm_organisation_example', repository='repository_example'),
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_scm_organisations(client: TestClient):
    """Test case for get_scm_organisations

    
    """
    params = [("credential_id", 'credential_id_example')]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/scm/{scm}/organizations".format(organization='organization_example', scm='scm_example'),
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_user(client: TestClient):
    """Test case for get_user

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/users/{user}".format(organization='organization_example', user='user_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_user_favorites(client: TestClient):
    """Test case for get_user_favorites

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/users/{user}/favorites".format(user='user_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_get_users(client: TestClient):
    """Test case for get_users

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/organizations/{organization}/users/".format(organization='organization_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_pipeline_run(client: TestClient):
    """Test case for post_pipeline_run

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "POST",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_post_pipeline_runs(client: TestClient):
    """Test case for post_pipeline_runs

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "POST",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_put_pipeline_favorite(client: TestClient):
    """Test case for put_pipeline_favorite

    
    """
    unknown_base_type = openapi_server.UNKNOWN_BASE_TYPE()

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "PUT",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".format(organization='organization_example', pipeline='pipeline_example'),
        headers=headers,
        json=unknown_base_type,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_put_pipeline_run(client: TestClient):
    """Test case for put_pipeline_run

    
    """
    params = [("blocking", 'blocking_example'),     ("time_out_in_secs", 56)]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "PUT",
        "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".format(organization='organization_example', pipeline='pipeline_example', run='run_example'),
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_search(client: TestClient):
    """Test case for search

    
    """
    params = [("q", 'q_example')]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/search/",
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200


def test_search_classes(client: TestClient):
    """Test case for search_classes

    
    """
    params = [("q", 'q_example')]
    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/blue/rest/classes/",
        headers=headers,
        params=params,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200

