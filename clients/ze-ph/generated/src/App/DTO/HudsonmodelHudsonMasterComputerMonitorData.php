<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonmodelHudsonMasterComputerMonitorData 
{
    /**
     * @DTA\Data(field="hudson.node_monitors.SwapSpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2::class})
     * @var \App\DTO\HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2
     */
    public $hudson_node_monitors_swap_space_monitor;
    /**
     * @DTA\Data(field="hudson.node_monitors.TemporarySpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace::class})
     * @var \App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace
     */
    public $hudson_node_monitors_temporary_space_monitor;
    /**
     * @DTA\Data(field="hudson.node_monitors.DiskSpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace::class})
     * @var \App\DTO\HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace
     */
    public $hudson_node_monitors_disk_space_monitor;
    /**
     * @DTA\Data(field="hudson.node_monitors.ArchitectureMonitor", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $hudson_node_monitors_architecture_monitor;
    /**
     * @DTA\Data(field="hudson.node_monitors.ResponseTimeMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonnodeMonitorsResponseTimeMonitorData::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonnodeMonitorsResponseTimeMonitorData::class})
     * @var \App\DTO\HudsonnodeMonitorsResponseTimeMonitorData
     */
    public $hudson_node_monitors_response_time_monitor;
    /**
     * @DTA\Data(field="hudson.node_monitors.ClockMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonutilClockDifference::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonutilClockDifference::class})
     * @var \App\DTO\HudsonutilClockDifference
     */
    public $hudson_node_monitors_clock_monitor;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}

