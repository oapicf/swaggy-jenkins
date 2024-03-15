# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer


pytestmark = pytest.mark.asyncio

async def test_get_crumb(client):
    """Test case for get_crumb

    
    """
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'BasicZm9vOmJhcg==',
    }
    response = await client.request(
        method='GET',
        path='/crumbIssuer/api/json',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

