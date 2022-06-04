<?php
/**
 * HudsonMasterComputermonitorData
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.0.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * HudsonMasterComputermonitorData Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class HudsonMasterComputermonitorData implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'HudsonMasterComputermonitorData';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'hudson_node_monitors_swap_space_monitor' => '\OpenAPI\Client\Model\SwapSpaceMonitorMemoryUsage2',
        'hudson_node_monitors_temporary_space_monitor' => '\OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace',
        'hudson_node_monitors_disk_space_monitor' => '\OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace',
        'hudson_node_monitors_architecture_monitor' => 'string',
        'hudson_node_monitors_response_time_monitor' => '\OpenAPI\Client\Model\ResponseTimeMonitorData',
        'hudson_node_monitors_clock_monitor' => '\OpenAPI\Client\Model\ClockDifference',
        '_class' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'hudson_node_monitors_swap_space_monitor' => null,
        'hudson_node_monitors_temporary_space_monitor' => null,
        'hudson_node_monitors_disk_space_monitor' => null,
        'hudson_node_monitors_architecture_monitor' => null,
        'hudson_node_monitors_response_time_monitor' => null,
        'hudson_node_monitors_clock_monitor' => null,
        '_class' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'hudson_node_monitors_swap_space_monitor' => 'hudson.node_monitors.SwapSpaceMonitor',
        'hudson_node_monitors_temporary_space_monitor' => 'hudson.node_monitors.TemporarySpaceMonitor',
        'hudson_node_monitors_disk_space_monitor' => 'hudson.node_monitors.DiskSpaceMonitor',
        'hudson_node_monitors_architecture_monitor' => 'hudson.node_monitors.ArchitectureMonitor',
        'hudson_node_monitors_response_time_monitor' => 'hudson.node_monitors.ResponseTimeMonitor',
        'hudson_node_monitors_clock_monitor' => 'hudson.node_monitors.ClockMonitor',
        '_class' => '_class'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'hudson_node_monitors_swap_space_monitor' => 'setHudsonNodeMonitorsSwapSpaceMonitor',
        'hudson_node_monitors_temporary_space_monitor' => 'setHudsonNodeMonitorsTemporarySpaceMonitor',
        'hudson_node_monitors_disk_space_monitor' => 'setHudsonNodeMonitorsDiskSpaceMonitor',
        'hudson_node_monitors_architecture_monitor' => 'setHudsonNodeMonitorsArchitectureMonitor',
        'hudson_node_monitors_response_time_monitor' => 'setHudsonNodeMonitorsResponseTimeMonitor',
        'hudson_node_monitors_clock_monitor' => 'setHudsonNodeMonitorsClockMonitor',
        '_class' => 'setClass'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'hudson_node_monitors_swap_space_monitor' => 'getHudsonNodeMonitorsSwapSpaceMonitor',
        'hudson_node_monitors_temporary_space_monitor' => 'getHudsonNodeMonitorsTemporarySpaceMonitor',
        'hudson_node_monitors_disk_space_monitor' => 'getHudsonNodeMonitorsDiskSpaceMonitor',
        'hudson_node_monitors_architecture_monitor' => 'getHudsonNodeMonitorsArchitectureMonitor',
        'hudson_node_monitors_response_time_monitor' => 'getHudsonNodeMonitorsResponseTimeMonitor',
        'hudson_node_monitors_clock_monitor' => 'getHudsonNodeMonitorsClockMonitor',
        '_class' => 'getClass'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['hudson_node_monitors_swap_space_monitor'] = $data['hudson_node_monitors_swap_space_monitor'] ?? null;
        $this->container['hudson_node_monitors_temporary_space_monitor'] = $data['hudson_node_monitors_temporary_space_monitor'] ?? null;
        $this->container['hudson_node_monitors_disk_space_monitor'] = $data['hudson_node_monitors_disk_space_monitor'] ?? null;
        $this->container['hudson_node_monitors_architecture_monitor'] = $data['hudson_node_monitors_architecture_monitor'] ?? null;
        $this->container['hudson_node_monitors_response_time_monitor'] = $data['hudson_node_monitors_response_time_monitor'] ?? null;
        $this->container['hudson_node_monitors_clock_monitor'] = $data['hudson_node_monitors_clock_monitor'] ?? null;
        $this->container['_class'] = $data['_class'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets hudson_node_monitors_swap_space_monitor
     *
     * @return \OpenAPI\Client\Model\SwapSpaceMonitorMemoryUsage2|null
     */
    public function getHudsonNodeMonitorsSwapSpaceMonitor()
    {
        return $this->container['hudson_node_monitors_swap_space_monitor'];
    }

    /**
     * Sets hudson_node_monitors_swap_space_monitor
     *
     * @param \OpenAPI\Client\Model\SwapSpaceMonitorMemoryUsage2|null $hudson_node_monitors_swap_space_monitor hudson_node_monitors_swap_space_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsSwapSpaceMonitor($hudson_node_monitors_swap_space_monitor)
    {
        $this->container['hudson_node_monitors_swap_space_monitor'] = $hudson_node_monitors_swap_space_monitor;

        return $this;
    }

    /**
     * Gets hudson_node_monitors_temporary_space_monitor
     *
     * @return \OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     */
    public function getHudsonNodeMonitorsTemporarySpaceMonitor()
    {
        return $this->container['hudson_node_monitors_temporary_space_monitor'];
    }

    /**
     * Sets hudson_node_monitors_temporary_space_monitor
     *
     * @param \OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace|null $hudson_node_monitors_temporary_space_monitor hudson_node_monitors_temporary_space_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsTemporarySpaceMonitor($hudson_node_monitors_temporary_space_monitor)
    {
        $this->container['hudson_node_monitors_temporary_space_monitor'] = $hudson_node_monitors_temporary_space_monitor;

        return $this;
    }

    /**
     * Gets hudson_node_monitors_disk_space_monitor
     *
     * @return \OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace|null
     */
    public function getHudsonNodeMonitorsDiskSpaceMonitor()
    {
        return $this->container['hudson_node_monitors_disk_space_monitor'];
    }

    /**
     * Sets hudson_node_monitors_disk_space_monitor
     *
     * @param \OpenAPI\Client\Model\DiskSpaceMonitorDescriptorDiskSpace|null $hudson_node_monitors_disk_space_monitor hudson_node_monitors_disk_space_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsDiskSpaceMonitor($hudson_node_monitors_disk_space_monitor)
    {
        $this->container['hudson_node_monitors_disk_space_monitor'] = $hudson_node_monitors_disk_space_monitor;

        return $this;
    }

    /**
     * Gets hudson_node_monitors_architecture_monitor
     *
     * @return string|null
     */
    public function getHudsonNodeMonitorsArchitectureMonitor()
    {
        return $this->container['hudson_node_monitors_architecture_monitor'];
    }

    /**
     * Sets hudson_node_monitors_architecture_monitor
     *
     * @param string|null $hudson_node_monitors_architecture_monitor hudson_node_monitors_architecture_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsArchitectureMonitor($hudson_node_monitors_architecture_monitor)
    {
        $this->container['hudson_node_monitors_architecture_monitor'] = $hudson_node_monitors_architecture_monitor;

        return $this;
    }

    /**
     * Gets hudson_node_monitors_response_time_monitor
     *
     * @return \OpenAPI\Client\Model\ResponseTimeMonitorData|null
     */
    public function getHudsonNodeMonitorsResponseTimeMonitor()
    {
        return $this->container['hudson_node_monitors_response_time_monitor'];
    }

    /**
     * Sets hudson_node_monitors_response_time_monitor
     *
     * @param \OpenAPI\Client\Model\ResponseTimeMonitorData|null $hudson_node_monitors_response_time_monitor hudson_node_monitors_response_time_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsResponseTimeMonitor($hudson_node_monitors_response_time_monitor)
    {
        $this->container['hudson_node_monitors_response_time_monitor'] = $hudson_node_monitors_response_time_monitor;

        return $this;
    }

    /**
     * Gets hudson_node_monitors_clock_monitor
     *
     * @return \OpenAPI\Client\Model\ClockDifference|null
     */
    public function getHudsonNodeMonitorsClockMonitor()
    {
        return $this->container['hudson_node_monitors_clock_monitor'];
    }

    /**
     * Sets hudson_node_monitors_clock_monitor
     *
     * @param \OpenAPI\Client\Model\ClockDifference|null $hudson_node_monitors_clock_monitor hudson_node_monitors_clock_monitor
     *
     * @return self
     */
    public function setHudsonNodeMonitorsClockMonitor($hudson_node_monitors_clock_monitor)
    {
        $this->container['hudson_node_monitors_clock_monitor'] = $hudson_node_monitors_clock_monitor;

        return $this;
    }

    /**
     * Gets _class
     *
     * @return string|null
     */
    public function getClass()
    {
        return $this->container['_class'];
    }

    /**
     * Sets _class
     *
     * @param string|null $_class _class
     *
     * @return self
     */
    public function setClass($_class)
    {
        $this->container['_class'] = $_class;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


