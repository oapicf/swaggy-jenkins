# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer  # noqa: E501
from openapi_server.test import BaseTestCase


class TestBaseController(BaseTestCase):
    """BaseController integration test stubs"""

    def test_get_crumb(self):
        """Test case for get_crumb

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Basic Zm9vOmJhcg==',
        }
        response = self.client.open(
            '/crumbIssuer/api/json',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
