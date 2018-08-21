<?php
/**
 * HudsonMasterComputermonitorData
 */
namespace app\Models;

/**
 * HudsonMasterComputermonitorData
 */
class HudsonMasterComputermonitorData {

    /** @var \app\Models\SwapSpaceMonitorMemoryUsage2 $hudson_node_monitors_swap_space_monitor */
    private $hudson_node_monitors_swap_space_monitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudson_node_monitors_temporary_space_monitor */
    private $hudson_node_monitors_temporary_space_monitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudson_node_monitors_disk_space_monitor */
    private $hudson_node_monitors_disk_space_monitor;

    /** @var string $hudson_node_monitors_architecture_monitor */
    private $hudson_node_monitors_architecture_monitor;

    /** @var \app\Models\ResponseTimeMonitorData $hudson_node_monitors_response_time_monitor */
    private $hudson_node_monitors_response_time_monitor;

    /** @var \app\Models\ClockDifference $hudson_node_monitors_clock_monitor */
    private $hudson_node_monitors_clock_monitor;

    /** @var string $_class */
    private $_class;

}
