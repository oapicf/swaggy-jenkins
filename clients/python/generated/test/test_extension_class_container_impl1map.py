# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification

    The version of the OpenAPI document: 2.0.1-pre.0
    Contact: blah+oapicf@cliffano.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from swaggyjenkins.models.extension_class_container_impl1map import ExtensionClassContainerImpl1map

class TestExtensionClassContainerImpl1map(unittest.TestCase):
    """ExtensionClassContainerImpl1map unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtensionClassContainerImpl1map:
        """Test ExtensionClassContainerImpl1map
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtensionClassContainerImpl1map`
        """
        model = ExtensionClassContainerImpl1map()
        if include_optional:
            return ExtensionClassContainerImpl1map(
                io_jenkins_blueocean_service_embedded_rest_pipeline_impl = swaggyjenkins.models.extension_class_impl.ExtensionClassImpl(
                    _class = '', 
                    _links = swaggyjenkins.models.extension_class_impllinks.ExtensionClassImpllinks(
                        self = swaggyjenkins.models.link.Link(
                            _class = '', 
                            href = '', ), 
                        _class = '', ), 
                    classes = [
                        ''
                        ], ),
                io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl = swaggyjenkins.models.extension_class_impl.ExtensionClassImpl(
                    _class = '', 
                    _links = swaggyjenkins.models.extension_class_impllinks.ExtensionClassImpllinks(
                        self = swaggyjenkins.models.link.Link(
                            _class = '', 
                            href = '', ), 
                        _class = '', ), 
                    classes = [
                        ''
                        ], ),
                var_class = ''
            )
        else:
            return ExtensionClassContainerImpl1map(
        )
        """

    def testExtensionClassContainerImpl1map(self):
        """Test ExtensionClassContainerImpl1map"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
