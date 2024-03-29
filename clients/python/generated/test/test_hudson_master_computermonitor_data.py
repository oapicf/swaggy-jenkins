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

from swaggyjenkins.models.hudson_master_computermonitor_data import HudsonMasterComputermonitorData

class TestHudsonMasterComputermonitorData(unittest.TestCase):
    """HudsonMasterComputermonitorData unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> HudsonMasterComputermonitorData:
        """Test HudsonMasterComputermonitorData
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `HudsonMasterComputermonitorData`
        """
        model = HudsonMasterComputermonitorData()
        if include_optional:
            return HudsonMasterComputermonitorData(
                hudson_node_monitors_swap_space_monitor = swaggyjenkins.models.swap_space_monitor_memory_usage2.SwapSpaceMonitorMemoryUsage2(
                    _class = '', 
                    available_physical_memory = 56, 
                    available_swap_space = 56, 
                    total_physical_memory = 56, 
                    total_swap_space = 56, ),
                hudson_node_monitors_temporary_space_monitor = swaggyjenkins.models.disk_space_monitor_descriptor_disk_space.DiskSpaceMonitorDescriptorDiskSpace(
                    _class = '', 
                    timestamp = 56, 
                    path = '', 
                    size = 56, ),
                hudson_node_monitors_disk_space_monitor = swaggyjenkins.models.disk_space_monitor_descriptor_disk_space.DiskSpaceMonitorDescriptorDiskSpace(
                    _class = '', 
                    timestamp = 56, 
                    path = '', 
                    size = 56, ),
                hudson_node_monitors_architecture_monitor = '',
                hudson_node_monitors_response_time_monitor = swaggyjenkins.models.response_time_monitor_data.ResponseTimeMonitorData(
                    _class = '', 
                    timestamp = 56, 
                    average = 56, ),
                hudson_node_monitors_clock_monitor = swaggyjenkins.models.clock_difference.ClockDifference(
                    _class = '', 
                    diff = 56, ),
                var_class = ''
            )
        else:
            return HudsonMasterComputermonitorData(
        )
        """

    def testHudsonMasterComputermonitorData(self):
        """Test HudsonMasterComputermonitorData"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
