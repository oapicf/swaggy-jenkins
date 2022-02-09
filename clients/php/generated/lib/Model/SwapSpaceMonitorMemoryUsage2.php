<?php
/**
 * SwapSpaceMonitorMemoryUsage2
 *
 * PHP version 7.3
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
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
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
 * SwapSpaceMonitorMemoryUsage2 Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class SwapSpaceMonitorMemoryUsage2 implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'SwapSpaceMonitorMemoryUsage2';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        '_class' => 'string',
        'available_physical_memory' => 'int',
        'available_swap_space' => 'int',
        'total_physical_memory' => 'int',
        'total_swap_space' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        '_class' => null,
        'available_physical_memory' => null,
        'available_swap_space' => null,
        'total_physical_memory' => null,
        'total_swap_space' => null
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
        '_class' => '_class',
        'available_physical_memory' => 'availablePhysicalMemory',
        'available_swap_space' => 'availableSwapSpace',
        'total_physical_memory' => 'totalPhysicalMemory',
        'total_swap_space' => 'totalSwapSpace'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        '_class' => 'setClass',
        'available_physical_memory' => 'setAvailablePhysicalMemory',
        'available_swap_space' => 'setAvailableSwapSpace',
        'total_physical_memory' => 'setTotalPhysicalMemory',
        'total_swap_space' => 'setTotalSwapSpace'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        '_class' => 'getClass',
        'available_physical_memory' => 'getAvailablePhysicalMemory',
        'available_swap_space' => 'getAvailableSwapSpace',
        'total_physical_memory' => 'getTotalPhysicalMemory',
        'total_swap_space' => 'getTotalSwapSpace'
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
        $this->container['_class'] = $data['_class'] ?? null;
        $this->container['available_physical_memory'] = $data['available_physical_memory'] ?? null;
        $this->container['available_swap_space'] = $data['available_swap_space'] ?? null;
        $this->container['total_physical_memory'] = $data['total_physical_memory'] ?? null;
        $this->container['total_swap_space'] = $data['total_swap_space'] ?? null;
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
     * Gets available_physical_memory
     *
     * @return int|null
     */
    public function getAvailablePhysicalMemory()
    {
        return $this->container['available_physical_memory'];
    }

    /**
     * Sets available_physical_memory
     *
     * @param int|null $available_physical_memory available_physical_memory
     *
     * @return self
     */
    public function setAvailablePhysicalMemory($available_physical_memory)
    {
        $this->container['available_physical_memory'] = $available_physical_memory;

        return $this;
    }

    /**
     * Gets available_swap_space
     *
     * @return int|null
     */
    public function getAvailableSwapSpace()
    {
        return $this->container['available_swap_space'];
    }

    /**
     * Sets available_swap_space
     *
     * @param int|null $available_swap_space available_swap_space
     *
     * @return self
     */
    public function setAvailableSwapSpace($available_swap_space)
    {
        $this->container['available_swap_space'] = $available_swap_space;

        return $this;
    }

    /**
     * Gets total_physical_memory
     *
     * @return int|null
     */
    public function getTotalPhysicalMemory()
    {
        return $this->container['total_physical_memory'];
    }

    /**
     * Sets total_physical_memory
     *
     * @param int|null $total_physical_memory total_physical_memory
     *
     * @return self
     */
    public function setTotalPhysicalMemory($total_physical_memory)
    {
        $this->container['total_physical_memory'] = $total_physical_memory;

        return $this;
    }

    /**
     * Gets total_swap_space
     *
     * @return int|null
     */
    public function getTotalSwapSpace()
    {
        return $this->container['total_swap_space'];
    }

    /**
     * Sets total_swap_space
     *
     * @param int|null $total_swap_space total_swap_space
     *
     * @return self
     */
    public function setTotalSwapSpace($total_swap_space)
    {
        $this->container['total_swap_space'] = $total_swap_space;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
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
    public function offsetSet($offset, $value)
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
    public function offsetUnset($offset)
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


