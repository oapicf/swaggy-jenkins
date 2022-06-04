<?php
/**
 * FreeStyleBuild
 *
 * PHP version 8.1.1
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
 * The version of the OpenAPI document: 1.5.1-pre.0
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
 * Class representing the FreeStyleBuild model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class FreeStyleBuild 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * @var int|null
     * @SerializedName("number")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $number;

    /**
     * @var string|null
     * @SerializedName("url")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $url;

    /**
     * @var OpenAPI\Server\Model\CauseAction[]|null
     * @SerializedName("actions")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\CauseAction")
     * })
     * @Type("array<OpenAPI\Server\Model\CauseAction>")
     */
    protected $actions;

    /**
     * @var bool|null
     * @SerializedName("building")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $building;

    /**
     * @var string|null
     * @SerializedName("description")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $description;

    /**
     * @var string|null
     * @SerializedName("displayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $displayName;

    /**
     * @var int|null
     * @SerializedName("duration")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $duration;

    /**
     * @var int|null
     * @SerializedName("estimatedDuration")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $estimatedDuration;

    /**
     * @var string|null
     * @SerializedName("executor")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $executor;

    /**
     * @var string|null
     * @SerializedName("fullDisplayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $fullDisplayName;

    /**
     * @var string|null
     * @SerializedName("id")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $id;

    /**
     * @var bool|null
     * @SerializedName("keepLog")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $keepLog;

    /**
     * @var int|null
     * @SerializedName("queueId")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $queueId;

    /**
     * @var string|null
     * @SerializedName("result")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $result;

    /**
     * @var int|null
     * @SerializedName("timestamp")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $timestamp;

    /**
     * @var string|null
     * @SerializedName("builtOn")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $builtOn;

    /**
     * @var OpenAPI\Server\Model\EmptyChangeLogSet|null
     * @SerializedName("changeSet")
     * @Assert\Type("OpenAPI\Server\Model\EmptyChangeLogSet")
     * @Type("OpenAPI\Server\Model\EmptyChangeLogSet")
     */
    protected $changeSet;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->number = isset($data['number']) ? $data['number'] : null;
        $this->url = isset($data['url']) ? $data['url'] : null;
        $this->actions = isset($data['actions']) ? $data['actions'] : null;
        $this->building = isset($data['building']) ? $data['building'] : null;
        $this->description = isset($data['description']) ? $data['description'] : null;
        $this->displayName = isset($data['displayName']) ? $data['displayName'] : null;
        $this->duration = isset($data['duration']) ? $data['duration'] : null;
        $this->estimatedDuration = isset($data['estimatedDuration']) ? $data['estimatedDuration'] : null;
        $this->executor = isset($data['executor']) ? $data['executor'] : null;
        $this->fullDisplayName = isset($data['fullDisplayName']) ? $data['fullDisplayName'] : null;
        $this->id = isset($data['id']) ? $data['id'] : null;
        $this->keepLog = isset($data['keepLog']) ? $data['keepLog'] : null;
        $this->queueId = isset($data['queueId']) ? $data['queueId'] : null;
        $this->result = isset($data['result']) ? $data['result'] : null;
        $this->timestamp = isset($data['timestamp']) ? $data['timestamp'] : null;
        $this->builtOn = isset($data['builtOn']) ? $data['builtOn'] : null;
        $this->changeSet = isset($data['changeSet']) ? $data['changeSet'] : null;
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

    /**
     * Gets number.
     *
     * @return int|null
     */
    public function getNumber()
    {
        return $this->number;
    }

    /**
     * Sets number.
     *
     * @param int|null $number
     *
     * @return $this
     */
    public function setNumber($number = null)
    {
        $this->number = $number;

        return $this;
    }

    /**
     * Gets url.
     *
     * @return string|null
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Sets url.
     *
     * @param string|null $url
     *
     * @return $this
     */
    public function setUrl($url = null)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Gets actions.
     *
     * @return OpenAPI\Server\Model\CauseAction[]|null
     */
    public function getActions(): ?array
    {
        return $this->actions;
    }

    /**
     * Sets actions.
     *
     * @param OpenAPI\Server\Model\CauseAction[]|null $actions
     *
     * @return $this
     */
    public function setActions(array $actions = null)
    {
        $this->actions = $actions;

        return $this;
    }

    /**
     * Gets building.
     *
     * @return bool|null
     */
    public function isBuilding()
    {
        return $this->building;
    }

    /**
     * Sets building.
     *
     * @param bool|null $building
     *
     * @return $this
     */
    public function setBuilding($building = null)
    {
        $this->building = $building;

        return $this;
    }

    /**
     * Gets description.
     *
     * @return string|null
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Sets description.
     *
     * @param string|null $description
     *
     * @return $this
     */
    public function setDescription($description = null)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Gets displayName.
     *
     * @return string|null
     */
    public function getDisplayName()
    {
        return $this->displayName;
    }

    /**
     * Sets displayName.
     *
     * @param string|null $displayName
     *
     * @return $this
     */
    public function setDisplayName($displayName = null)
    {
        $this->displayName = $displayName;

        return $this;
    }

    /**
     * Gets duration.
     *
     * @return int|null
     */
    public function getDuration()
    {
        return $this->duration;
    }

    /**
     * Sets duration.
     *
     * @param int|null $duration
     *
     * @return $this
     */
    public function setDuration($duration = null)
    {
        $this->duration = $duration;

        return $this;
    }

    /**
     * Gets estimatedDuration.
     *
     * @return int|null
     */
    public function getEstimatedDuration()
    {
        return $this->estimatedDuration;
    }

    /**
     * Sets estimatedDuration.
     *
     * @param int|null $estimatedDuration
     *
     * @return $this
     */
    public function setEstimatedDuration($estimatedDuration = null)
    {
        $this->estimatedDuration = $estimatedDuration;

        return $this;
    }

    /**
     * Gets executor.
     *
     * @return string|null
     */
    public function getExecutor()
    {
        return $this->executor;
    }

    /**
     * Sets executor.
     *
     * @param string|null $executor
     *
     * @return $this
     */
    public function setExecutor($executor = null)
    {
        $this->executor = $executor;

        return $this;
    }

    /**
     * Gets fullDisplayName.
     *
     * @return string|null
     */
    public function getFullDisplayName()
    {
        return $this->fullDisplayName;
    }

    /**
     * Sets fullDisplayName.
     *
     * @param string|null $fullDisplayName
     *
     * @return $this
     */
    public function setFullDisplayName($fullDisplayName = null)
    {
        $this->fullDisplayName = $fullDisplayName;

        return $this;
    }

    /**
     * Gets id.
     *
     * @return string|null
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Sets id.
     *
     * @param string|null $id
     *
     * @return $this
     */
    public function setId($id = null)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Gets keepLog.
     *
     * @return bool|null
     */
    public function isKeepLog()
    {
        return $this->keepLog;
    }

    /**
     * Sets keepLog.
     *
     * @param bool|null $keepLog
     *
     * @return $this
     */
    public function setKeepLog($keepLog = null)
    {
        $this->keepLog = $keepLog;

        return $this;
    }

    /**
     * Gets queueId.
     *
     * @return int|null
     */
    public function getQueueId()
    {
        return $this->queueId;
    }

    /**
     * Sets queueId.
     *
     * @param int|null $queueId
     *
     * @return $this
     */
    public function setQueueId($queueId = null)
    {
        $this->queueId = $queueId;

        return $this;
    }

    /**
     * Gets result.
     *
     * @return string|null
     */
    public function getResult()
    {
        return $this->result;
    }

    /**
     * Sets result.
     *
     * @param string|null $result
     *
     * @return $this
     */
    public function setResult($result = null)
    {
        $this->result = $result;

        return $this;
    }

    /**
     * Gets timestamp.
     *
     * @return int|null
     */
    public function getTimestamp()
    {
        return $this->timestamp;
    }

    /**
     * Sets timestamp.
     *
     * @param int|null $timestamp
     *
     * @return $this
     */
    public function setTimestamp($timestamp = null)
    {
        $this->timestamp = $timestamp;

        return $this;
    }

    /**
     * Gets builtOn.
     *
     * @return string|null
     */
    public function getBuiltOn()
    {
        return $this->builtOn;
    }

    /**
     * Sets builtOn.
     *
     * @param string|null $builtOn
     *
     * @return $this
     */
    public function setBuiltOn($builtOn = null)
    {
        $this->builtOn = $builtOn;

        return $this;
    }

    /**
     * Gets changeSet.
     *
     * @return OpenAPI\Server\Model\EmptyChangeLogSet|null
     */
    public function getChangeSet(): ?EmptyChangeLogSet
    {
        return $this->changeSet;
    }

    /**
     * Sets changeSet.
     *
     * @param OpenAPI\Server\Model\EmptyChangeLogSet|null $changeSet
     *
     * @return $this
     */
    public function setChangeSet(EmptyChangeLogSet $changeSet = null)
    {
        $this->changeSet = $changeSet;

        return $this;
    }
}


