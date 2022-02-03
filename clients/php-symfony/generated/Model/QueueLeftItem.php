<?php
/**
 * QueueLeftItem
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
 * The version of the OpenAPI document: 1.1.1
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
 * Class representing the QueueLeftItem model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class QueueLeftItem 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

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
     * @SerializedName("blocked")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $blocked;

    /**
     * @var bool|null
     * @SerializedName("buildable")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $buildable;

    /**
     * @var int|null
     * @SerializedName("id")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $id;

    /**
     * @var int|null
     * @SerializedName("inQueueSince")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $inQueueSince;

    /**
     * @var string|null
     * @SerializedName("params")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $params;

    /**
     * @var bool|null
     * @SerializedName("stuck")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $stuck;

    /**
     * @var OpenAPI\Server\Model\FreeStyleProject|null
     * @SerializedName("task")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleProject")
     * @Type("OpenAPI\Server\Model\FreeStyleProject")
     */
    protected $task;

    /**
     * @var string|null
     * @SerializedName("url")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $url;

    /**
     * @var string|null
     * @SerializedName("why")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $why;

    /**
     * @var bool|null
     * @SerializedName("cancelled")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $cancelled;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("executable")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $executable;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->actions = isset($data['actions']) ? $data['actions'] : null;
        $this->blocked = isset($data['blocked']) ? $data['blocked'] : null;
        $this->buildable = isset($data['buildable']) ? $data['buildable'] : null;
        $this->id = isset($data['id']) ? $data['id'] : null;
        $this->inQueueSince = isset($data['inQueueSince']) ? $data['inQueueSince'] : null;
        $this->params = isset($data['params']) ? $data['params'] : null;
        $this->stuck = isset($data['stuck']) ? $data['stuck'] : null;
        $this->task = isset($data['task']) ? $data['task'] : null;
        $this->url = isset($data['url']) ? $data['url'] : null;
        $this->why = isset($data['why']) ? $data['why'] : null;
        $this->cancelled = isset($data['cancelled']) ? $data['cancelled'] : null;
        $this->executable = isset($data['executable']) ? $data['executable'] : null;
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
     * Gets blocked.
     *
     * @return bool|null
     */
    public function isBlocked()
    {
        return $this->blocked;
    }

    /**
     * Sets blocked.
     *
     * @param bool|null $blocked
     *
     * @return $this
     */
    public function setBlocked($blocked = null)
    {
        $this->blocked = $blocked;

        return $this;
    }

    /**
     * Gets buildable.
     *
     * @return bool|null
     */
    public function isBuildable()
    {
        return $this->buildable;
    }

    /**
     * Sets buildable.
     *
     * @param bool|null $buildable
     *
     * @return $this
     */
    public function setBuildable($buildable = null)
    {
        $this->buildable = $buildable;

        return $this;
    }

    /**
     * Gets id.
     *
     * @return int|null
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Sets id.
     *
     * @param int|null $id
     *
     * @return $this
     */
    public function setId($id = null)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Gets inQueueSince.
     *
     * @return int|null
     */
    public function getInQueueSince()
    {
        return $this->inQueueSince;
    }

    /**
     * Sets inQueueSince.
     *
     * @param int|null $inQueueSince
     *
     * @return $this
     */
    public function setInQueueSince($inQueueSince = null)
    {
        $this->inQueueSince = $inQueueSince;

        return $this;
    }

    /**
     * Gets params.
     *
     * @return string|null
     */
    public function getParams()
    {
        return $this->params;
    }

    /**
     * Sets params.
     *
     * @param string|null $params
     *
     * @return $this
     */
    public function setParams($params = null)
    {
        $this->params = $params;

        return $this;
    }

    /**
     * Gets stuck.
     *
     * @return bool|null
     */
    public function isStuck()
    {
        return $this->stuck;
    }

    /**
     * Sets stuck.
     *
     * @param bool|null $stuck
     *
     * @return $this
     */
    public function setStuck($stuck = null)
    {
        $this->stuck = $stuck;

        return $this;
    }

    /**
     * Gets task.
     *
     * @return OpenAPI\Server\Model\FreeStyleProject|null
     */
    public function getTask(): ?FreeStyleProject
    {
        return $this->task;
    }

    /**
     * Sets task.
     *
     * @param OpenAPI\Server\Model\FreeStyleProject|null $task
     *
     * @return $this
     */
    public function setTask(FreeStyleProject $task = null)
    {
        $this->task = $task;

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
     * Gets why.
     *
     * @return string|null
     */
    public function getWhy()
    {
        return $this->why;
    }

    /**
     * Sets why.
     *
     * @param string|null $why
     *
     * @return $this
     */
    public function setWhy($why = null)
    {
        $this->why = $why;

        return $this;
    }

    /**
     * Gets cancelled.
     *
     * @return bool|null
     */
    public function isCancelled()
    {
        return $this->cancelled;
    }

    /**
     * Sets cancelled.
     *
     * @param bool|null $cancelled
     *
     * @return $this
     */
    public function setCancelled($cancelled = null)
    {
        $this->cancelled = $cancelled;

        return $this;
    }

    /**
     * Gets executable.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getExecutable(): ?FreeStyleBuild
    {
        return $this->executable;
    }

    /**
     * Sets executable.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $executable
     *
     * @return $this
     */
    public function setExecutable(FreeStyleBuild $executable = null)
    {
        $this->executable = $executable;

        return $this;
    }
}


