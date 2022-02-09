<?php
/**
 * HudsonMasterComputermonitorData
 *
 * PHP version 7.1.3
 *
 * @category Class
 * @package  OpenAPI\Server\Model
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Model;

use Symfony\Component\Validator\Constraints as Assert;
use JMS\Serializer\Annotation\Type;
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the HudsonMasterComputermonitorData model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class HudsonMasterComputermonitorData 
{
        /**
     * @var OpenAPI\Server\Model\SwapSpaceMonitorMemoryUsage2|null
     * @SerializedName("hudson.node_monitors.SwapSpaceMonitor")
     * @Assert\Type("OpenAPI\Server\Model\SwapSpaceMonitorMemoryUsage2")
     * @Type("OpenAPI\Server\Model\SwapSpaceMonitorMemoryUsage2")
     */
    protected $hudsonNodeMonitorsSwapSpaceMonitor;

    /**
     * @var OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     * @SerializedName("hudson.node_monitors.TemporarySpaceMonitor")
     * @Assert\Type("OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace")
     * @Type("OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace")
     */
    protected $hudsonNodeMonitorsTemporarySpaceMonitor;

    /**
     * @var OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     * @SerializedName("hudson.node_monitors.DiskSpaceMonitor")
     * @Assert\Type("OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace")
     * @Type("OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace")
     */
    protected $hudsonNodeMonitorsDiskSpaceMonitor;

    /**
     * @var string|null
     * @SerializedName("hudson.node_monitors.ArchitectureMonitor")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $hudsonNodeMonitorsArchitectureMonitor;

    /**
     * @var OpenAPI\Server\Model\ResponseTimeMonitorData|null
     * @SerializedName("hudson.node_monitors.ResponseTimeMonitor")
     * @Assert\Type("OpenAPI\Server\Model\ResponseTimeMonitorData")
     * @Type("OpenAPI\Server\Model\ResponseTimeMonitorData")
     */
    protected $hudsonNodeMonitorsResponseTimeMonitor;

    /**
     * @var OpenAPI\Server\Model\ClockDifference|null
     * @SerializedName("hudson.node_monitors.ClockMonitor")
     * @Assert\Type("OpenAPI\Server\Model\ClockDifference")
     * @Type("OpenAPI\Server\Model\ClockDifference")
     */
    protected $hudsonNodeMonitorsClockMonitor;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->hudsonNodeMonitorsSwapSpaceMonitor = isset($data['hudsonNodeMonitorsSwapSpaceMonitor']) ? $data['hudsonNodeMonitorsSwapSpaceMonitor'] : null;
        $this->hudsonNodeMonitorsTemporarySpaceMonitor = isset($data['hudsonNodeMonitorsTemporarySpaceMonitor']) ? $data['hudsonNodeMonitorsTemporarySpaceMonitor'] : null;
        $this->hudsonNodeMonitorsDiskSpaceMonitor = isset($data['hudsonNodeMonitorsDiskSpaceMonitor']) ? $data['hudsonNodeMonitorsDiskSpaceMonitor'] : null;
        $this->hudsonNodeMonitorsArchitectureMonitor = isset($data['hudsonNodeMonitorsArchitectureMonitor']) ? $data['hudsonNodeMonitorsArchitectureMonitor'] : null;
        $this->hudsonNodeMonitorsResponseTimeMonitor = isset($data['hudsonNodeMonitorsResponseTimeMonitor']) ? $data['hudsonNodeMonitorsResponseTimeMonitor'] : null;
        $this->hudsonNodeMonitorsClockMonitor = isset($data['hudsonNodeMonitorsClockMonitor']) ? $data['hudsonNodeMonitorsClockMonitor'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
    }

    /**
     * Gets hudsonNodeMonitorsSwapSpaceMonitor.
     *
     * @return OpenAPI\Server\Model\SwapSpaceMonitorMemoryUsage2|null
     */
    public function getHudsonNodeMonitorsSwapSpaceMonitor(): ?SwapSpaceMonitorMemoryUsage2
    {
        return $this->hudsonNodeMonitorsSwapSpaceMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsSwapSpaceMonitor.
     *
     * @param OpenAPI\Server\Model\SwapSpaceMonitorMemoryUsage2|null $hudsonNodeMonitorsSwapSpaceMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 $hudsonNodeMonitorsSwapSpaceMonitor = null)
    {
        $this->hudsonNodeMonitorsSwapSpaceMonitor = $hudsonNodeMonitorsSwapSpaceMonitor;

        return $this;
    }

    /**
     * Gets hudsonNodeMonitorsTemporarySpaceMonitor.
     *
     * @return OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     */
    public function getHudsonNodeMonitorsTemporarySpaceMonitor(): ?DiskSpaceMonitorDescriptorDiskSpace
    {
        return $this->hudsonNodeMonitorsTemporarySpaceMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsTemporarySpaceMonitor.
     *
     * @param OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null $hudsonNodeMonitorsTemporarySpaceMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsTemporarySpaceMonitor = null)
    {
        $this->hudsonNodeMonitorsTemporarySpaceMonitor = $hudsonNodeMonitorsTemporarySpaceMonitor;

        return $this;
    }

    /**
     * Gets hudsonNodeMonitorsDiskSpaceMonitor.
     *
     * @return OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     */
    public function getHudsonNodeMonitorsDiskSpaceMonitor(): ?DiskSpaceMonitorDescriptorDiskSpace
    {
        return $this->hudsonNodeMonitorsDiskSpaceMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsDiskSpaceMonitor.
     *
     * @param OpenAPI\Server\Model\DiskSpaceMonitorDescriptorDiskSpace|null $hudsonNodeMonitorsDiskSpaceMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace $hudsonNodeMonitorsDiskSpaceMonitor = null)
    {
        $this->hudsonNodeMonitorsDiskSpaceMonitor = $hudsonNodeMonitorsDiskSpaceMonitor;

        return $this;
    }

    /**
     * Gets hudsonNodeMonitorsArchitectureMonitor.
     *
     * @return string|null
     */
    public function getHudsonNodeMonitorsArchitectureMonitor()
    {
        return $this->hudsonNodeMonitorsArchitectureMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsArchitectureMonitor.
     *
     * @param string|null $hudsonNodeMonitorsArchitectureMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsArchitectureMonitor($hudsonNodeMonitorsArchitectureMonitor = null)
    {
        $this->hudsonNodeMonitorsArchitectureMonitor = $hudsonNodeMonitorsArchitectureMonitor;

        return $this;
    }

    /**
     * Gets hudsonNodeMonitorsResponseTimeMonitor.
     *
     * @return OpenAPI\Server\Model\ResponseTimeMonitorData|null
     */
    public function getHudsonNodeMonitorsResponseTimeMonitor(): ?ResponseTimeMonitorData
    {
        return $this->hudsonNodeMonitorsResponseTimeMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsResponseTimeMonitor.
     *
     * @param OpenAPI\Server\Model\ResponseTimeMonitorData|null $hudsonNodeMonitorsResponseTimeMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData $hudsonNodeMonitorsResponseTimeMonitor = null)
    {
        $this->hudsonNodeMonitorsResponseTimeMonitor = $hudsonNodeMonitorsResponseTimeMonitor;

        return $this;
    }

    /**
     * Gets hudsonNodeMonitorsClockMonitor.
     *
     * @return OpenAPI\Server\Model\ClockDifference|null
     */
    public function getHudsonNodeMonitorsClockMonitor(): ?ClockDifference
    {
        return $this->hudsonNodeMonitorsClockMonitor;
    }

    /**
     * Sets hudsonNodeMonitorsClockMonitor.
     *
     * @param OpenAPI\Server\Model\ClockDifference|null $hudsonNodeMonitorsClockMonitor
     *
     * @return $this
     */
    public function setHudsonNodeMonitorsClockMonitor(ClockDifference $hudsonNodeMonitorsClockMonitor = null)
    {
        $this->hudsonNodeMonitorsClockMonitor = $hudsonNodeMonitorsClockMonitor;

        return $this;
    }

    /**
     * Gets class.
     *
     * @return string|null
     */
    public function getClass()
    {
        return $this->class;
    }

    /**
     * Sets class.
     *
     * @param string|null $class
     *
     * @return $this
     */
    public function setClass($class = null)
    {
        $this->class = $class;

        return $this;
    }
}


