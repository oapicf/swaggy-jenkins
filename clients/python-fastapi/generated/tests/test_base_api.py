# coding: utf-8

from fastapi.testclient import TestClient


from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer  # noqa: F401


def test_get_crumb(client: TestClient):
    """Test case for get_crumb

    
    """

    headers = {
        "Authorization": "BasicZm9vOmJhcg==",
    }
    response = client.request(
        "GET",
        "/crumbIssuer/api/json",
        headers=headers,
    )

    # uncomment below to assert the status code of the HTTP response
    #assert response.status_code == 200

