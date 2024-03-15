<?php
/**
 * HudsonMasterComputermonitorData
 */
namespace app\Models;

/**
 * HudsonMasterComputermonitorData
 */
class HudsonMasterComputermonitorData {

    /** @var \app\Models\SwapSpaceMonitorMemoryUsage2 $hudsonNodeMonitorsSwapSpaceMonitor */
    public $hudsonNodeMonitorsSwapSpaceMonitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsTemporarySpaceMonitor */
    public $hudsonNodeMonitorsTemporarySpaceMonitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsDiskSpaceMonitor */
    public $hudsonNodeMonitorsDiskSpaceMonitor;

    /** @var string $hudsonNodeMonitorsArchitectureMonitor */
    public $hudsonNodeMonitorsArchitectureMonitor = "";

    /** @var \app\Models\ResponseTimeMonitorData $hudsonNodeMonitorsResponseTimeMonitor */
    public $hudsonNodeMonitorsResponseTimeMonitor;

    /** @var \app\Models\ClockDifference $hudsonNodeMonitorsClockMonitor */
    public $hudsonNodeMonitorsClockMonitor;

    /** @var string $class */
    public $class = "";

}
