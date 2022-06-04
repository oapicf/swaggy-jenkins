<?php
/**
 * PipelineRunImpl
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
 * PipelineRunImpl Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class PipelineRunImpl implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'PipelineRunImpl';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        '_class' => 'string',
        '_links' => '\OpenAPI\Client\Model\PipelineRunImpllinks',
        'duration_in_millis' => 'int',
        'en_queue_time' => 'string',
        'end_time' => 'string',
        'estimated_duration_in_millis' => 'int',
        'id' => 'string',
        'organization' => 'string',
        'pipeline' => 'string',
        'result' => 'string',
        'run_summary' => 'string',
        'start_time' => 'string',
        'state' => 'string',
        'type' => 'string',
        'commit_id' => 'string'
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
        '_links' => null,
        'duration_in_millis' => null,
        'en_queue_time' => null,
        'end_time' => null,
        'estimated_duration_in_millis' => null,
        'id' => null,
        'organization' => null,
        'pipeline' => null,
        'result' => null,
        'run_summary' => null,
        'start_time' => null,
        'state' => null,
        'type' => null,
        'commit_id' => null
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
        '_links' => '_links',
        'duration_in_millis' => 'durationInMillis',
        'en_queue_time' => 'enQueueTime',
        'end_time' => 'endTime',
        'estimated_duration_in_millis' => 'estimatedDurationInMillis',
        'id' => 'id',
        'organization' => 'organization',
        'pipeline' => 'pipeline',
        'result' => 'result',
        'run_summary' => 'runSummary',
        'start_time' => 'startTime',
        'state' => 'state',
        'type' => 'type',
        'commit_id' => 'commitId'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        '_class' => 'setClass',
        '_links' => 'setLinks',
        'duration_in_millis' => 'setDurationInMillis',
        'en_queue_time' => 'setEnQueueTime',
        'end_time' => 'setEndTime',
        'estimated_duration_in_millis' => 'setEstimatedDurationInMillis',
        'id' => 'setId',
        'organization' => 'setOrganization',
        'pipeline' => 'setPipeline',
        'result' => 'setResult',
        'run_summary' => 'setRunSummary',
        'start_time' => 'setStartTime',
        'state' => 'setState',
        'type' => 'setType',
        'commit_id' => 'setCommitId'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        '_class' => 'getClass',
        '_links' => 'getLinks',
        'duration_in_millis' => 'getDurationInMillis',
        'en_queue_time' => 'getEnQueueTime',
        'end_time' => 'getEndTime',
        'estimated_duration_in_millis' => 'getEstimatedDurationInMillis',
        'id' => 'getId',
        'organization' => 'getOrganization',
        'pipeline' => 'getPipeline',
        'result' => 'getResult',
        'run_summary' => 'getRunSummary',
        'start_time' => 'getStartTime',
        'state' => 'getState',
        'type' => 'getType',
        'commit_id' => 'getCommitId'
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
        $this->container['_links'] = $data['_links'] ?? null;
        $this->container['duration_in_millis'] = $data['duration_in_millis'] ?? null;
        $this->container['en_queue_time'] = $data['en_queue_time'] ?? null;
        $this->container['end_time'] = $data['end_time'] ?? null;
        $this->container['estimated_duration_in_millis'] = $data['estimated_duration_in_millis'] ?? null;
        $this->container['id'] = $data['id'] ?? null;
        $this->container['organization'] = $data['organization'] ?? null;
        $this->container['pipeline'] = $data['pipeline'] ?? null;
        $this->container['result'] = $data['result'] ?? null;
        $this->container['run_summary'] = $data['run_summary'] ?? null;
        $this->container['start_time'] = $data['start_time'] ?? null;
        $this->container['state'] = $data['state'] ?? null;
        $this->container['type'] = $data['type'] ?? null;
        $this->container['commit_id'] = $data['commit_id'] ?? null;
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
     * Gets _links
     *
     * @return \OpenAPI\Client\Model\PipelineRunImpllinks|null
     */
    public function getLinks()
    {
        return $this->container['_links'];
    }

    /**
     * Sets _links
     *
     * @param \OpenAPI\Client\Model\PipelineRunImpllinks|null $_links _links
     *
     * @return self
     */
    public function setLinks($_links)
    {
        $this->container['_links'] = $_links;

        return $this;
    }

    /**
     * Gets duration_in_millis
     *
     * @return int|null
     */
    public function getDurationInMillis()
    {
        return $this->container['duration_in_millis'];
    }

    /**
     * Sets duration_in_millis
     *
     * @param int|null $duration_in_millis duration_in_millis
     *
     * @return self
     */
    public function setDurationInMillis($duration_in_millis)
    {
        $this->container['duration_in_millis'] = $duration_in_millis;

        return $this;
    }

    /**
     * Gets en_queue_time
     *
     * @return string|null
     */
    public function getEnQueueTime()
    {
        return $this->container['en_queue_time'];
    }

    /**
     * Sets en_queue_time
     *
     * @param string|null $en_queue_time en_queue_time
     *
     * @return self
     */
    public function setEnQueueTime($en_queue_time)
    {
        $this->container['en_queue_time'] = $en_queue_time;

        return $this;
    }

    /**
     * Gets end_time
     *
     * @return string|null
     */
    public function getEndTime()
    {
        return $this->container['end_time'];
    }

    /**
     * Sets end_time
     *
     * @param string|null $end_time end_time
     *
     * @return self
     */
    public function setEndTime($end_time)
    {
        $this->container['end_time'] = $end_time;

        return $this;
    }

    /**
     * Gets estimated_duration_in_millis
     *
     * @return int|null
     */
    public function getEstimatedDurationInMillis()
    {
        return $this->container['estimated_duration_in_millis'];
    }

    /**
     * Sets estimated_duration_in_millis
     *
     * @param int|null $estimated_duration_in_millis estimated_duration_in_millis
     *
     * @return self
     */
    public function setEstimatedDurationInMillis($estimated_duration_in_millis)
    {
        $this->container['estimated_duration_in_millis'] = $estimated_duration_in_millis;

        return $this;
    }

    /**
     * Gets id
     *
     * @return string|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param string|null $id id
     *
     * @return self
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets organization
     *
     * @return string|null
     */
    public function getOrganization()
    {
        return $this->container['organization'];
    }

    /**
     * Sets organization
     *
     * @param string|null $organization organization
     *
     * @return self
     */
    public function setOrganization($organization)
    {
        $this->container['organization'] = $organization;

        return $this;
    }

    /**
     * Gets pipeline
     *
     * @return string|null
     */
    public function getPipeline()
    {
        return $this->container['pipeline'];
    }

    /**
     * Sets pipeline
     *
     * @param string|null $pipeline pipeline
     *
     * @return self
     */
    public function setPipeline($pipeline)
    {
        $this->container['pipeline'] = $pipeline;

        return $this;
    }

    /**
     * Gets result
     *
     * @return string|null
     */
    public function getResult()
    {
        return $this->container['result'];
    }

    /**
     * Sets result
     *
     * @param string|null $result result
     *
     * @return self
     */
    public function setResult($result)
    {
        $this->container['result'] = $result;

        return $this;
    }

    /**
     * Gets run_summary
     *
     * @return string|null
     */
    public function getRunSummary()
    {
        return $this->container['run_summary'];
    }

    /**
     * Sets run_summary
     *
     * @param string|null $run_summary run_summary
     *
     * @return self
     */
    public function setRunSummary($run_summary)
    {
        $this->container['run_summary'] = $run_summary;

        return $this;
    }

    /**
     * Gets start_time
     *
     * @return string|null
     */
    public function getStartTime()
    {
        return $this->container['start_time'];
    }

    /**
     * Sets start_time
     *
     * @param string|null $start_time start_time
     *
     * @return self
     */
    public function setStartTime($start_time)
    {
        $this->container['start_time'] = $start_time;

        return $this;
    }

    /**
     * Gets state
     *
     * @return string|null
     */
    public function getState()
    {
        return $this->container['state'];
    }

    /**
     * Sets state
     *
     * @param string|null $state state
     *
     * @return self
     */
    public function setState($state)
    {
        $this->container['state'] = $state;

        return $this;
    }

    /**
     * Gets type
     *
     * @return string|null
     */
    public function getType()
    {
        return $this->container['type'];
    }

    /**
     * Sets type
     *
     * @param string|null $type type
     *
     * @return self
     */
    public function setType($type)
    {
        $this->container['type'] = $type;

        return $this;
    }

    /**
     * Gets commit_id
     *
     * @return string|null
     */
    public function getCommitId()
    {
        return $this->container['commit_id'];
    }

    /**
     * Sets commit_id
     *
     * @param string|null $commit_id commit_id
     *
     * @return self
     */
    public function setCommitId($commit_id)
    {
        $this->container['commit_id'] = $commit_id;

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


