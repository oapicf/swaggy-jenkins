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
    private $hudsonNodeMonitorsSwapSpaceMonitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsTemporarySpaceMonitor */
    private $hudsonNodeMonitorsTemporarySpaceMonitor;

    /** @var \app\Models\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsDiskSpaceMonitor */
    private $hudsonNodeMonitorsDiskSpaceMonitor;

    /** @var string $hudsonNodeMonitorsArchitectureMonitor */
    private $hudsonNodeMonitorsArchitectureMonitor;

    /** @var \app\Models\ResponseTimeMonitorData $hudsonNodeMonitorsResponseTimeMonitor */
    private $hudsonNodeMonitorsResponseTimeMonitor;

    /** @var \app\Models\ClockDifference $hudsonNodeMonitorsClockMonitor */
    private $hudsonNodeMonitorsClockMonitor;

    /** @var string $class */
    private $class;

}
