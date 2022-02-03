<?php
/**
 * QueueLeftItem
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
 * The version of the OpenAPI document: 1.1.1
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
 * QueueLeftItem Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class QueueLeftItem implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'QueueLeftItem';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        '_class' => 'string',
        'actions' => '\OpenAPI\Client\Model\CauseAction[]',
        'blocked' => 'bool',
        'buildable' => 'bool',
        'id' => 'int',
        'in_queue_since' => 'int',
        'params' => 'string',
        'stuck' => 'bool',
        'task' => '\OpenAPI\Client\Model\FreeStyleProject',
        'url' => 'string',
        'why' => 'string',
        'cancelled' => 'bool',
        'executable' => '\OpenAPI\Client\Model\FreeStyleBuild'
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
        'actions' => null,
        'blocked' => null,
        'buildable' => null,
        'id' => null,
        'in_queue_since' => null,
        'params' => null,
        'stuck' => null,
        'task' => null,
        'url' => null,
        'why' => null,
        'cancelled' => null,
        'executable' => null
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
        'actions' => 'actions',
        'blocked' => 'blocked',
        'buildable' => 'buildable',
        'id' => 'id',
        'in_queue_since' => 'inQueueSince',
        'params' => 'params',
        'stuck' => 'stuck',
        'task' => 'task',
        'url' => 'url',
        'why' => 'why',
        'cancelled' => 'cancelled',
        'executable' => 'executable'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        '_class' => 'setClass',
        'actions' => 'setActions',
        'blocked' => 'setBlocked',
        'buildable' => 'setBuildable',
        'id' => 'setId',
        'in_queue_since' => 'setInQueueSince',
        'params' => 'setParams',
        'stuck' => 'setStuck',
        'task' => 'setTask',
        'url' => 'setUrl',
        'why' => 'setWhy',
        'cancelled' => 'setCancelled',
        'executable' => 'setExecutable'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        '_class' => 'getClass',
        'actions' => 'getActions',
        'blocked' => 'getBlocked',
        'buildable' => 'getBuildable',
        'id' => 'getId',
        'in_queue_since' => 'getInQueueSince',
        'params' => 'getParams',
        'stuck' => 'getStuck',
        'task' => 'getTask',
        'url' => 'getUrl',
        'why' => 'getWhy',
        'cancelled' => 'getCancelled',
        'executable' => 'getExecutable'
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
        $this->container['actions'] = $data['actions'] ?? null;
        $this->container['blocked'] = $data['blocked'] ?? null;
        $this->container['buildable'] = $data['buildable'] ?? null;
        $this->container['id'] = $data['id'] ?? null;
        $this->container['in_queue_since'] = $data['in_queue_since'] ?? null;
        $this->container['params'] = $data['params'] ?? null;
        $this->container['stuck'] = $data['stuck'] ?? null;
        $this->container['task'] = $data['task'] ?? null;
        $this->container['url'] = $data['url'] ?? null;
        $this->container['why'] = $data['why'] ?? null;
        $this->container['cancelled'] = $data['cancelled'] ?? null;
        $this->container['executable'] = $data['executable'] ?? null;
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
     * Gets actions
     *
     * @return \OpenAPI\Client\Model\CauseAction[]|null
     */
    public function getActions()
    {
        return $this->container['actions'];
    }

    /**
     * Sets actions
     *
     * @param \OpenAPI\Client\Model\CauseAction[]|null $actions actions
     *
     * @return self
     */
    public function setActions($actions)
    {
        $this->container['actions'] = $actions;

        return $this;
    }

    /**
     * Gets blocked
     *
     * @return bool|null
     */
    public function getBlocked()
    {
        return $this->container['blocked'];
    }

    /**
     * Sets blocked
     *
     * @param bool|null $blocked blocked
     *
     * @return self
     */
    public function setBlocked($blocked)
    {
        $this->container['blocked'] = $blocked;

        return $this;
    }

    /**
     * Gets buildable
     *
     * @return bool|null
     */
    public function getBuildable()
    {
        return $this->container['buildable'];
    }

    /**
     * Sets buildable
     *
     * @param bool|null $buildable buildable
     *
     * @return self
     */
    public function setBuildable($buildable)
    {
        $this->container['buildable'] = $buildable;

        return $this;
    }

    /**
     * Gets id
     *
     * @return int|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int|null $id id
     *
     * @return self
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets in_queue_since
     *
     * @return int|null
     */
    public function getInQueueSince()
    {
        return $this->container['in_queue_since'];
    }

    /**
     * Sets in_queue_since
     *
     * @param int|null $in_queue_since in_queue_since
     *
     * @return self
     */
    public function setInQueueSince($in_queue_since)
    {
        $this->container['in_queue_since'] = $in_queue_since;

        return $this;
    }

    /**
     * Gets params
     *
     * @return string|null
     */
    public function getParams()
    {
        return $this->container['params'];
    }

    /**
     * Sets params
     *
     * @param string|null $params params
     *
     * @return self
     */
    public function setParams($params)
    {
        $this->container['params'] = $params;

        return $this;
    }

    /**
     * Gets stuck
     *
     * @return bool|null
     */
    public function getStuck()
    {
        return $this->container['stuck'];
    }

    /**
     * Sets stuck
     *
     * @param bool|null $stuck stuck
     *
     * @return self
     */
    public function setStuck($stuck)
    {
        $this->container['stuck'] = $stuck;

        return $this;
    }

    /**
     * Gets task
     *
     * @return \OpenAPI\Client\Model\FreeStyleProject|null
     */
    public function getTask()
    {
        return $this->container['task'];
    }

    /**
     * Sets task
     *
     * @param \OpenAPI\Client\Model\FreeStyleProject|null $task task
     *
     * @return self
     */
    public function setTask($task)
    {
        $this->container['task'] = $task;

        return $this;
    }

    /**
     * Gets url
     *
     * @return string|null
     */
    public function getUrl()
    {
        return $this->container['url'];
    }

    /**
     * Sets url
     *
     * @param string|null $url url
     *
     * @return self
     */
    public function setUrl($url)
    {
        $this->container['url'] = $url;

        return $this;
    }

    /**
     * Gets why
     *
     * @return string|null
     */
    public function getWhy()
    {
        return $this->container['why'];
    }

    /**
     * Sets why
     *
     * @param string|null $why why
     *
     * @return self
     */
    public function setWhy($why)
    {
        $this->container['why'] = $why;

        return $this;
    }

    /**
     * Gets cancelled
     *
     * @return bool|null
     */
    public function getCancelled()
    {
        return $this->container['cancelled'];
    }

    /**
     * Sets cancelled
     *
     * @param bool|null $cancelled cancelled
     *
     * @return self
     */
    public function setCancelled($cancelled)
    {
        $this->container['cancelled'] = $cancelled;

        return $this;
    }

    /**
     * Gets executable
     *
     * @return \OpenAPI\Client\Model\FreeStyleBuild|null
     */
    public function getExecutable()
    {
        return $this->container['executable'];
    }

    /**
     * Sets executable
     *
     * @param \OpenAPI\Client\Model\FreeStyleBuild|null $executable executable
     *
     * @return self
     */
    public function setExecutable($executable)
    {
        $this->container['executable'] = $executable;

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


