<?php
/**
 * HudsonMasterComputermonitorData
 */
namespace OpenAPIServer\Model;

/**
 * HudsonMasterComputermonitorData
 */
class HudsonMasterComputermonitorData {

    /** @var \OpenAPIServer\Model\SwapSpaceMonitorMemoryUsage2 $hudsonNodeMonitorsSwapSpaceMonitor */
    private $hudsonNodeMonitorsSwapSpaceMonitor;

    /** @var \OpenAPIServer\Model\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsTemporarySpaceMonitor */
    private $hudsonNodeMonitorsTemporarySpaceMonitor;

    /** @var \OpenAPIServer\Model\DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsDiskSpaceMonitor */
    private $hudsonNodeMonitorsDiskSpaceMonitor;

    /** @var string $hudsonNodeMonitorsArchitectureMonitor */
    private $hudsonNodeMonitorsArchitectureMonitor;

    /** @var \OpenAPIServer\Model\ResponseTimeMonitorData $hudsonNodeMonitorsResponseTimeMonitor */
    private $hudsonNodeMonitorsResponseTimeMonitor;

    /** @var \OpenAPIServer\Model\ClockDifference $hudsonNodeMonitorsClockMonitor */
    private $hudsonNodeMonitorsClockMonitor;

    /** @var string $class */
    private $class;

}
