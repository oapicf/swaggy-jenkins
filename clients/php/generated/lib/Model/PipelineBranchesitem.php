<?php
/**
 * PipelineBranchesitem
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
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.4.0
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
 * PipelineBranchesitem Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class PipelineBranchesitem implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'PipelineBranchesitem';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'display_name' => 'string',
        'estimated_duration_in_millis' => 'int',
        'name' => 'string',
        'weather_score' => 'int',
        'latest_run' => '\OpenAPI\Client\Model\PipelineBranchesitemlatestRun',
        'organization' => 'string',
        'pull_request' => '\OpenAPI\Client\Model\PipelineBranchesitempullRequest',
        'total_number_of_pull_requests' => 'int',
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
        'display_name' => null,
        'estimated_duration_in_millis' => null,
        'name' => null,
        'weather_score' => null,
        'latest_run' => null,
        'organization' => null,
        'pull_request' => null,
        'total_number_of_pull_requests' => null,
        '_class' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'display_name' => false,
        'estimated_duration_in_millis' => false,
        'name' => false,
        'weather_score' => false,
        'latest_run' => false,
        'organization' => false,
        'pull_request' => false,
        'total_number_of_pull_requests' => false,
        '_class' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

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
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'display_name' => 'displayName',
        'estimated_duration_in_millis' => 'estimatedDurationInMillis',
        'name' => 'name',
        'weather_score' => 'weatherScore',
        'latest_run' => 'latestRun',
        'organization' => 'organization',
        'pull_request' => 'pullRequest',
        'total_number_of_pull_requests' => 'totalNumberOfPullRequests',
        '_class' => '_class'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'display_name' => 'setDisplayName',
        'estimated_duration_in_millis' => 'setEstimatedDurationInMillis',
        'name' => 'setName',
        'weather_score' => 'setWeatherScore',
        'latest_run' => 'setLatestRun',
        'organization' => 'setOrganization',
        'pull_request' => 'setPullRequest',
        'total_number_of_pull_requests' => 'setTotalNumberOfPullRequests',
        '_class' => 'setClass'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'display_name' => 'getDisplayName',
        'estimated_duration_in_millis' => 'getEstimatedDurationInMillis',
        'name' => 'getName',
        'weather_score' => 'getWeatherScore',
        'latest_run' => 'getLatestRun',
        'organization' => 'getOrganization',
        'pull_request' => 'getPullRequest',
        'total_number_of_pull_requests' => 'getTotalNumberOfPullRequests',
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
        $this->setIfExists('display_name', $data ?? [], null);
        $this->setIfExists('estimated_duration_in_millis', $data ?? [], null);
        $this->setIfExists('name', $data ?? [], null);
        $this->setIfExists('weather_score', $data ?? [], null);
        $this->setIfExists('latest_run', $data ?? [], null);
        $this->setIfExists('organization', $data ?? [], null);
        $this->setIfExists('pull_request', $data ?? [], null);
        $this->setIfExists('total_number_of_pull_requests', $data ?? [], null);
        $this->setIfExists('_class', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
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
     * Gets display_name
     *
     * @return string|null
     */
    public function getDisplayName()
    {
        return $this->container['display_name'];
    }

    /**
     * Sets display_name
     *
     * @param string|null $display_name display_name
     *
     * @return self
     */
    public function setDisplayName($display_name)
    {
        if (is_null($display_name)) {
            throw new \InvalidArgumentException('non-nullable display_name cannot be null');
        }
        $this->container['display_name'] = $display_name;

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
        if (is_null($estimated_duration_in_millis)) {
            throw new \InvalidArgumentException('non-nullable estimated_duration_in_millis cannot be null');
        }
        $this->container['estimated_duration_in_millis'] = $estimated_duration_in_millis;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string|null
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string|null $name name
     *
     * @return self
     */
    public function setName($name)
    {
        if (is_null($name)) {
            throw new \InvalidArgumentException('non-nullable name cannot be null');
        }
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets weather_score
     *
     * @return int|null
     */
    public function getWeatherScore()
    {
        return $this->container['weather_score'];
    }

    /**
     * Sets weather_score
     *
     * @param int|null $weather_score weather_score
     *
     * @return self
     */
    public function setWeatherScore($weather_score)
    {
        if (is_null($weather_score)) {
            throw new \InvalidArgumentException('non-nullable weather_score cannot be null');
        }
        $this->container['weather_score'] = $weather_score;

        return $this;
    }

    /**
     * Gets latest_run
     *
     * @return \OpenAPI\Client\Model\PipelineBranchesitemlatestRun|null
     */
    public function getLatestRun()
    {
        return $this->container['latest_run'];
    }

    /**
     * Sets latest_run
     *
     * @param \OpenAPI\Client\Model\PipelineBranchesitemlatestRun|null $latest_run latest_run
     *
     * @return self
     */
    public function setLatestRun($latest_run)
    {
        if (is_null($latest_run)) {
            throw new \InvalidArgumentException('non-nullable latest_run cannot be null');
        }
        $this->container['latest_run'] = $latest_run;

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
        if (is_null($organization)) {
            throw new \InvalidArgumentException('non-nullable organization cannot be null');
        }
        $this->container['organization'] = $organization;

        return $this;
    }

    /**
     * Gets pull_request
     *
     * @return \OpenAPI\Client\Model\PipelineBranchesitempullRequest|null
     */
    public function getPullRequest()
    {
        return $this->container['pull_request'];
    }

    /**
     * Sets pull_request
     *
     * @param \OpenAPI\Client\Model\PipelineBranchesitempullRequest|null $pull_request pull_request
     *
     * @return self
     */
    public function setPullRequest($pull_request)
    {
        if (is_null($pull_request)) {
            throw new \InvalidArgumentException('non-nullable pull_request cannot be null');
        }
        $this->container['pull_request'] = $pull_request;

        return $this;
    }

    /**
     * Gets total_number_of_pull_requests
     *
     * @return int|null
     */
    public function getTotalNumberOfPullRequests()
    {
        return $this->container['total_number_of_pull_requests'];
    }

    /**
     * Sets total_number_of_pull_requests
     *
     * @param int|null $total_number_of_pull_requests total_number_of_pull_requests
     *
     * @return self
     */
    public function setTotalNumberOfPullRequests($total_number_of_pull_requests)
    {
        if (is_null($total_number_of_pull_requests)) {
            throw new \InvalidArgumentException('non-nullable total_number_of_pull_requests cannot be null');
        }
        $this->container['total_number_of_pull_requests'] = $total_number_of_pull_requests;

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
        if (is_null($_class)) {
            throw new \InvalidArgumentException('non-nullable _class cannot be null');
        }
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


