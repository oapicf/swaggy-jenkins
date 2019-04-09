# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer  # noqa: E501
from openapi_server.test import BaseTestCase


class TestBaseRemoteAccessController(BaseTestCase):
    """BaseRemoteAccessController integration test stubs"""

    def test_get_crumb(self):
        """Test case for get_crumb

        
        """
        response = self.client.open(
            '//crumbIssuer/api/json',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
