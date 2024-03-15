<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class HudsonMasterComputermonitorData
{
    /**
     * @DTA\Data(field="hudson.node_monitors.SwapSpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\SwapSpaceMonitorMemoryUsage2::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\SwapSpaceMonitorMemoryUsage2::class})
     */
    public ?\App\DTO\SwapSpaceMonitorMemoryUsage2 $hudson_node_monitors_swap_space_monitor = null;

    /**
     * @DTA\Data(field="hudson.node_monitors.TemporarySpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\DiskSpaceMonitorDescriptorDiskSpace::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\DiskSpaceMonitorDescriptorDiskSpace::class})
     */
    public ?\App\DTO\DiskSpaceMonitorDescriptorDiskSpace $hudson_node_monitors_temporary_space_monitor = null;

    /**
     * @DTA\Data(field="hudson.node_monitors.DiskSpaceMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\DiskSpaceMonitorDescriptorDiskSpace::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\DiskSpaceMonitorDescriptorDiskSpace::class})
     */
    public ?\App\DTO\DiskSpaceMonitorDescriptorDiskSpace $hudson_node_monitors_disk_space_monitor = null;

    /**
     * @DTA\Data(field="hudson.node_monitors.ArchitectureMonitor", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $hudson_node_monitors_architecture_monitor = null;

    /**
     * @DTA\Data(field="hudson.node_monitors.ResponseTimeMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeMonitorData::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ResponseTimeMonitorData::class})
     */
    public ?\App\DTO\ResponseTimeMonitorData $hudson_node_monitors_response_time_monitor = null;

    /**
     * @DTA\Data(field="hudson.node_monitors.ClockMonitor", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ClockDifference::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ClockDifference::class})
     */
    public ?\App\DTO\ClockDifference $hudson_node_monitors_clock_monitor = null;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

}
